#!/bin/sh

are_we_under_git(){
	[ -d '.git' ]
}

get_git_branch(){
	if are_we_under_git
	then
		git rev-parse --abbrev-ref HEAD
	fi
}

print_ps1_pwd()
{
  local GIT_BRANCH
  local DIR=${1}

  if are_we_under_git
  then
    DIR=$(basename "${DIR}")

    GIT_BRANCH=" ${4}$( get_git_branch )${5}"
  fi

  echo "${2}${DIR}${3}${GIT_BRANCH}" > /tmp/ps1

  printf " ${2}${DIR}${3}${GIT_BRANCH}"
}

print_ps1_tag() {
  echo -n '\[\e['"${1}"'m\]'"${2}"
}

print_ps1_colored() {
  local STRING="${2}"
  local COLOR

  if [ -n "${2}" ]
  then
    COLOR="3${1}"
    STRING="${2}"
  else
    STRING="${1}"
  fi

  print_ps1_tag "${COLOR}" "${STRING}"
}

print_ps1()
{
  local ARE_WE_ROOT CHROOT TO_PRINT HASH TO_PRINT i

  ARE_WE_ROOT=$( [ $(whoami) == "root" ] && echo 1 )

  [ ${ARE_WE_ROOT} ] && [ "$(stat -c %d:%i /)" != "$(stat -c %d:%i /proc/1/root/.)" ] && CHROOT='(chroot)'

  if [ ${ARE_WE_ROOT} ]
  then
    HASH='1 #'
  else
    HASH='2 $'
  fi

  PS1_FORMAT=(
    "${CHROOT}"
    '5 \t'
    '_'
    '6 \u'
    '@'
    '2 \h'
    '-'
    '$(print_ps1_pwd "\w" "\[\e[33;1m\]" "\[\e[m\]" "\[\e[44m\]\[\e[39m\]\[\e[1m\]" "\[\e(B\[\e[m\]") '
    "${HASH}"
    ':'
  )

  for i in "${PS1_FORMAT[@]}"
  do
    if [ "${i:0:1}" = '$' ]
    then
      TO_PRINT+="${i}"
    else
      TO_PRINT+="$( print_ps1_colored ${i} )"
    fi
  done

  #echo "${TO_PRINT}" > /tmp/ps1

  export PS1="${TO_PRINT}"
}

print_ps1
