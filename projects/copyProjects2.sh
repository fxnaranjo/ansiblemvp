#!/bin/bash

echo "STARTING"

rm -fr /ansible/dcaproject/*

rm -fr /root/ansible/*

cd /root/ansible

git clone https://github.com/fxnaranjo/ansiblemvp.git

cp -R /root/ansible/ansiblemvp/projects/collections/ /ansible/dcaproject
cp -R /root/ansible/ansiblemvp/projects/roles/ /ansible/dcaproject
cp -R /root/ansible/ansiblemvp/projects/group_vars/ /ansible/dcaproject

cp /root/ansible/ansiblemvp/projects/lpar-off-main.yml /ansible/dcaproject
cp /root/ansible/ansiblemvp/projects/lpar-on-main.yml /ansible/dcaproject
cp /root/ansible/ansiblemvp/projects/csm-main-sgm.yml /ansible/dcaproject
cp /root/ansible/ansiblemvp/projects/csm-main-rgm.yml /ansible/dcaproject
cp /root/ansible/ansiblemvp/projects/move-to-dca.yml /ansible/dcaproject
cp /root/ansible/ansiblemvp/projects/search-main.yml /ansible/dcaproject

cp /root/ansible/ansiblemvp/projects/vault-pass /ansible/dcaproject


#SCRIPTS PART

rm -fr /ansible/scripts


cd /ansible

git clone https://github.com/fxnaranjo/scripts.git


chmod -R 774 /ansible
chown -R awx:awx /ansible


echo "DONE COPY PROJECT"
