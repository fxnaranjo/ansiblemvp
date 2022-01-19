#!/bin/bash

echo "STARTING"

rm -fr /ansible/fxnproject/*

cp -R /home/fnaranjo/PROYECTOS/ALL/BcoPichincha/POWER2020-CMT/ansible-impl/projects/collections/ /ansible/fxnproject
cp -R /home/fnaranjo/PROYECTOS/ALL/BcoPichincha/POWER2020-CMT/ansible-impl/projects/roles/ /ansible/fxnproject
cp -R /home/fnaranjo/PROYECTOS/ALL/BcoPichincha/POWER2020-CMT/ansible-impl/projects/group_vars/ /ansible/fxnproject

cp /home/fnaranjo/PROYECTOS/ALL/BcoPichincha/POWER2020-CMT/ansible-impl/projects/lpar-off-main.yml /ansible/fxnproject
cp /home/fnaranjo/PROYECTOS/ALL/BcoPichincha/POWER2020-CMT/ansible-impl/projects/lpar-on-main.yml /ansible/fxnproject
cp /home/fnaranjo/PROYECTOS/ALL/BcoPichincha/POWER2020-CMT/ansible-impl/projects/csm-main-sgm.yml /ansible/fxnproject
cp /home/fnaranjo/PROYECTOS/ALL/BcoPichincha/POWER2020-CMT/ansible-impl/projects/csm-main-rgm.yml /ansible/fxnproject
cp /home/fnaranjo/PROYECTOS/ALL/BcoPichincha/POWER2020-CMT/ansible-impl/projects/move-to-dca.yml /ansible/fxnproject

cp /home/fnaranjo/PROYECTOS/ALL/BcoPichincha/POWER2020-CMT/ansible-impl/projects/vault-pass /ansible/fxnproject


chmod -R 777 /ansible
chown -R awx:awx /ansible


echo "DONE COPY PROJECT"
