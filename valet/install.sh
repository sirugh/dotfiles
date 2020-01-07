#!/bin/sh
composer global require weprovide/valet-plus
valet fix
valet install

# TODO: Update with if/else for echo
ping -c1 foobar.test
echo "If you don't see a response from 127.0.0.1, restart your system."
