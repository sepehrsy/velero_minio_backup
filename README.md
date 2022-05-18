# velero_minio_backup
#### Velero Minio Content Backup
```
cp backup.sh /usr/local/bin/
chmod a+x /usr/local/bin/backup.sh
```

#### cronjob:
#### EOF /etc/crontab

```
30     03     *     *     *     root    /usr/local/bin/backup.sh >> /var/log/backup.log 2>&1
```
