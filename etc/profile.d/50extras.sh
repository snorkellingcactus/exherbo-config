export ARCH=amd64

KERNEL=$(uname -r)
USERLAND=GNU

. /etc/paludis/bashrc

ARCH=x86_64
CC="$CHOST-cc"
HOSTCC="$CC"
AR="$CHOST-ar"
AS="$CHOST-as"
CPP="$CHOST-cpp"
CXX="$CHOST-c++"
FORTRAN="$CHOST-gfortran"
LD="$CHOST-ld"
NM="$CHOST-nm"
OBJCOPY="$CHOST-objcopy"
OBJDUMP="$CHOST-objdump"
PKG_CONFIG="$CHOST-pkg-config"
RANLIB="$CHOST-ranlib"
CFLAGS="${x86_64_pc_linux_gnu_CFLAGS}"
#HOSTCFLAGS="${CFLAGS}"
CXXFLAGS="$x86_64_pc_linux_gnu_CFLAGS"
#HOSTCXXFLAGS="${CXXFLAGS}"
CPPFLAGS="${CXXFLAGS}"
#HOSTCPPFLAGS="${CPPFLAGS}"

export ARCH CC HOSTCC AR AS CPP CXX FORTRAN LD NM OBJCOPY OBJDUMP PKG_CONFIG RANLIB CFLAGS CXXFLAGS CPPFLAGS KERNEL USERLAND

SSH_ENV="${HOME}"/.ssh/environment

start_agent() {
    echo 'Initializing new SSH agent...'

    ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"

    echo 'Suceedeed.'

    chmod 600 "${SSH_ENV}"

    . "${SSH_ENV}" > /dev/null

    ssh-add
}

#if [ -f "${SSH_ENV}" ]
#then
#     . "${SSH_ENV}" > /dev/null
#     ps -ef | grep -q ${SSH_AGENT_PID} | grep -q ssh-agent || {
#        start_agent;
#    }
#else
#    start_agent
#fi


#Quit me (devel profile only):
export QTWEBENGINE_REMOTE_DEBUGGING=12345
export WEBKIT_INSPECTOR_SERVER="http://localhost:12345"
qtwebkitconsole(){
	nohup dooble-1.56d --remote-debugging-port=12345 --load-url "http://localhost:12345" & > /dev/null
}

push_squashed(){
	local HOOK='.git/hooks/push_squashed'

	if [ we_are_under_git ]
	then
		local BRANCH_TARGET="$(get_git_branch)"
		local BRANCH_TEMP="${BRANCH_TARGET}_temp"
		local BRANCH_BASE="master"
		local PUSH_ARGS='-f'
    local REMOVE_TEMP_BRANCH='git rev-parse --symbolic-full-name --verify --quiet '"${BRANCH_TEMP}"')" && git branch -D '"${BRANCH_TEMP}"

		[ -f "${HOOK}" ] && source "${HOOK}"

#		if "${ALLOWED_BRANCHES}" | grep -q "${BRANCH_TARGET}"
#		then
			local COMMANDS=(
				'git checkout '"${BRANCH_BASE}"
        "${REMOVE_TEMP_BRANCH}"
				'git checkout -b '"${BRANCH_TEMP}"
				'git merge --squash '"${BRANCH_TARGET}"
				'git push '"${PUSH_ARGS}"
			)

			for i in "${COMMANDS[@]}"
			do
				echo "${i}"
				${i}

				[ "$?" != '0' ] && break
			done

      ${REMOVE_TEMP_BRANCH}

#		fi
	fi
}
