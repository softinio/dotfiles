#!/bin/bash

# need to have both 9.6.x and latest 10.0 installed, and keep 10.0 as default
brew unlink postgresql
brew install postgresql@9.6
brew unlink postgresql@9.6
brew link postgresql

# move 9.6.x db files to another directory
mv /usr/local/var/postgres /usr/local/var/postgres96

# init new database using 10.0
initdb /usr/local/var/postgres -E utf8

# make timezone and timezonesets directories available for 9.6.x installation
mkdir /usr/local/share/postgresql96
cp -r /usr/local/share/postgresql/timezone /usr/local/share/postgresql96
cp -r /usr/local/share/postgresql/timezonesets /usr/local/share/postgresql96

# finally the actual upgrade
# -b is the old binary dir, -B is the new binary dir
# -d is the old data dir, -D is the new data dir
pg_upgrade -b /usr/local/Cellar/postgresql@9.6/9.6.5/bin -B /usr/local/Cellar/postgresql/10.0/bin -d /usr/local/var/postgres96 -D /usr/local/var/postgres

# start 10.0 to check that upgrade works
pg_ctl start -D /usr/local/var/postgres

# cleanup if upgrade was successful
brew uninstall postgresql@9.6
rm -rf /usr/local/var/postgres96
rm -rf /usr/local/share/postgresql96

