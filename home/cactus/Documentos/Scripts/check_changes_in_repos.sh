#!/bin/sh

BLACKLIST=$( cat $( echo $0 | sed 's/\(.*\)\..*/\1/' ).blacklist )
ACCEPTED_ARGS='show save x'
DIR_SAVE=/home/cactus/Documentos/Backups/exherbo_patches

function strip_first()
{
	echo "${1}" | sed 's/'"${2}"'//' | trim
}
function stip_leading_spaces()
{
	sed -e 's/^[[:space:]]*//'
}
function stip_trailing_spaces()
{
	sed -e 's/[[:space:]]*$//'
}
function trim()
{
	stip_leading_spaces | stip_trailing_spaces
}

NUM=2
ARG=$( echo "$@" | cut -f"${NUM}" -d- )

#for i in "$@"
while [ ! -z "${ARG}" ]
do
	NAME=$( echo "${ARG}" | cut -s -f1 -d= )

	VALUE=1

	if [ ! -z "${NAME}" ]
	then

		( echo "${ACCEPTED_ARGS}" | grep -q "${NAME}" ) || continue

		VALUE=$( echo "${ARG}" | cut -s -f2 -d= )
	else
		NAME="${ARG}"
	fi

	declare "opt_${NAME}"="${VALUE}"

	let NUM++
	ARG=$( echo "$@" | cut -f"${NUM}" -d- )
done

REPOS=/var/db/paludis/repositories
FILES=( $( ls "${REPOS}" ) )

for I in "${!FILES[@]}"
do
	REPO_NAME="${FILES[${I}]}"

	REPO_PATH="${REPOS}/${REPO_NAME}"

	( [ ! -d "${REPO_PATH}/.git" ] || $( echo "${BLACKLIST}" | grep -q "${REPO_NAME}" ) ) && continue

	CMD_DIFF_BASE='git -C '"${REPO_PATH}"' diff'

	CHANGES=$( ${CMD_DIFF_BASE} --color=always )

	[ "${opt_save}" = 1 ] && save_all=1
	if [ ! -z "${opt_save}" ]
	then
		[ ! -z "${save_all}" ] && opt_save="${REPO_NAME}"

		if echo "${opt_save}" | grep -Fq "${REPO_NAME}"
		then
			opt_save=$( strip_first "${opt_save}" "${REPO_NAME}" )

			NAMES=( $( ${CMD_DIFF_BASE} --name-only ) )

			[ -z "${opt_save}" ] && [ ! -z "${!NAMES[@]}" ] && echo 'Posibilities are:' || echo 'Nothing to save.'

			for I in "${!NAMES[@]}"
			do
				NAME="${NAMES[${I}]}"

				if [ ! -z "${NAME}" ]
				then
					PKG_NAME=$( echo "${NAME}" | cut -f3 -d/ )

					if [ ! -z "${opt_save}" ]
					then
						if echo "${PKG_NAME}" | grep -Fq "${opt_save}"
						then
							PKG_CAT=$( echo "${NAME}" | cut -f2 -d/ )

							CMD="${CMD_DIFF_BASE} --exit-code ${SUBDIR}"


							#echo ${CMD_DIFF_BASE} "packages/${PKG_CAT}/${PKG_NAME}"
							SUBDIR="packages/${PKG_CAT}/${PKG_NAME}"
							[ -z "${opt_x}" ] && ${CMD} ||
							mkdir -p "${DIR_SAVE}/${SUBDIR}" && 
							${CMD} > ${DIR_SAVE}/${SUBDIR}/$( date +%g-%m-%d_%H-%M-%S ).patch &&
							echo 'Saved.'
						fi
					else
						echo "${PKG_NAME}"
					fi
				fi
			done
		fi
	fi

	if [ ! -z "${opt_show}" ] && [ ! -z "${CHANGES}" ]
	then
		echo 'Changes in '"${REPO_NAME}:"
		echo
		echo "${CHANGES}"
	fi
done
