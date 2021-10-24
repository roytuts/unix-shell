#!/bin/bash

backup_path="/home/<username>/backup"

# delete all but 5 recent database backups (files having .sql extension) in backup folder.
find $backup_path -maxdepth 1 -name "*.sql" -type f | xargs -x ls -t | awk 'NR>5' | xargs -L1 rm -f

# delete all but 5 recent database backups (files having .zip extension) in backup folder.
find $backup_path -maxdepth 1 -name "*.zip" -type f | xargs -x ls -t | awk 'NR>5' | xargs -L1 rm -f