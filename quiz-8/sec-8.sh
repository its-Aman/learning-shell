#! /bin/bash

function log() {
    logger -i -t $0 -p "user.${1}" $2
}

log info "info"
log emerg "emerg"
log alert "alert"
log crit "crit"
log err "err"
log warning "warning"
log notice "notice"
log info "info"
log debug "debug"
