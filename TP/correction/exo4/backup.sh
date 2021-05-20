#!/bin/bash
CONTAINER=$1
DB=exo3
DEST=$HOME/TP/correction/exo4/backups
TIMESTAMP=`date +%Y-%m-%d_%H-%M-%S`

docker exec -it $CONTAINER mysqldump -ppassword $DB > $DEST/$DB-$TIMESTAMP.sql