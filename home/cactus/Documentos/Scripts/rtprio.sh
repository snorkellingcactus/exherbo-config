#!/bin/sh

set_rtprio(){
    local RTPRIO=${1}
    local PID=${2}

    echo "chrt -rf -p ${PID} ${RTPRIO}"
    chrt -rf -p ${RTPRIO} ${PID}
}

set_nice(){
  local RTPRIO=${1}
  local PID=${2}

  echo "renice ${RTPRIO} ${PID}"
  renice ${RTPRIO} ${PID}
}

min_prio(){
 local PID=${1}

 set_rtprio 1 ${PID}
 set_nice 19 ${PID}
}

max_prio(){
    local PID=${1}

    set_rtprio 99 ${PID}
    set_nice -20 ${PID}
}

irq_pid(){
  NAME="${1}"

  echo $(ps -Ao pid,cmd | grep irq | grep "${NAME}" | cut -f1 -d'[')
}
