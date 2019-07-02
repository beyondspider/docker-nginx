#!/bin/bash
if [ ! -f /.root_password_created ]; then
    /password.sh
fi

/usr/sbin/sshd -D &
/usr/sbin/nginx
