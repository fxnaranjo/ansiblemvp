#!/bin/bash

echo "STARTING"

rm -fr /ansible/dcaproject/*

rm -fr /root/ansible/*

cd /root/ansible

git clone https://github.com/fxnaranjo/ansiblemvp.git

cp -R /root/ansible/projects/collections/ /ansible/dcaproject
cp -R /root/ansible/projects/roles/ /ansible/dcaproject
cp -R /root/ansible/projects/group_vars/ /ansible/dcaproject

cp /root/ansible/projects/lpar-off-main.yml /ansible/dcaproject
cp /root/ansible/projects/lpar-on-main.yml /ansible/dcaproject
cp /root/ansible/projects/csm-main-sgm.yml /ansible/dcaproject
cp /root/ansible/projects/csm-main-rgm.yml /ansible/dcaproject
cp /root/ansible/projects/move-to-dca.yml /ansible/dcaproject

cp /root/ansible/projects/vault-pass /ansible/dcaproject


chmod -R 774 /ansible
chown -R awx:awx /ansible


echo "DONE COPY PROJECT"
