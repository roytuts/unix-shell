#!/bin/bash

echo "Starting MySQL backup. Please wait ..."
echo -e #new line

WPDBNAME=`cat /var/www/html/site/wp-config.php | grep DB_NAME | cut -d \' -f 4`
WPDBUSER=`cat /var/www/html/site/wp-config.php | grep DB_USER | cut -d \' -f 4`
WPDBPASS=`cat /var/www/html/site/wp-config.php | grep DB_PASSWORD | cut -d \' -f 4`

backup_path="/home/<username>/backup"

mysql_backup_file=$backup_path/site-"`date "+%d-%m-%Y"`".sql

mysqldump -u$WPDBUSER -p$WPDBPASS $WPDBNAME > $mysql_backup_file

echo -e
echo "MySQL backup done - $mysql_backup_file"

echo -e #new line

echo "Starting web site backup. Please wait ..."
echo -e #new line

site_file_path="/var/www/html/site"
site_backup_file=$backup_path/site-"`date "+%d-%m-%Y"`".zip

zip -r $site_backup_file $site_file_path

echo -e
echo "Web site backup done - $site_backup_file"
echo -e
echo "Thank you!"