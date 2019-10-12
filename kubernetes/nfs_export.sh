cp /etc/exports /etc/exports.bak
cat >> /etc/exports  <<EOF
/nfs/data/store-b *(rw,sync,no_subtree_check,no_root_squash)
/nfs/data/store-b-s *(rw,sync,no_subtree_check,no_root_squash)
EOF
exportfs -r