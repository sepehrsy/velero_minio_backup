echo "k8s Cluster Valero Backup"
velero backup create backup-full-`date +"%m-%d-%Y-%H-%M"`
velero backup create backup-ingress-nginx-`date +"%m-%d-%Y-%H-%M"` --include-namespaces ingress-nginx
velero backup create backup-kube-graylog-`date +"%m-%d-%Y-%H-%M"` --include-namespaces kube-graylog
velero backup create backup-kube-monitor-`date +"%m-%d-%Y-%H-%M"` --include-namespaces kube-monitor
velero backup create backup-kube-public-`date +"%m-%d-%Y-%H-%M"` --include-namespaces kube-public
velero backup create backup-kube-system-`date +"%m-%d-%Y-%H-%M"` --include-namespaces kube-system
velero backup create backup-rook-ceph-`date +"%m-%d-%Y-%H-%M"` --include-namespaces rook-ceph
echo "k8s Cluster Valero Backup Done"
date
echo "----"

echo "Valero Minio Content Backup"
mc cp myminio/velero /Backup/Velero/ --recursive
echo "Valero Minio Backup Done"
date
echo "----"
