#!/bin/bash

cd /var/lib/jenkins/workspace/infra\ pipeline/08-jenkins/deploy-infra-img-java-app/terraform
cd /var/lib/jenkins/workspace/infra\ pipeline/08-jenkins/deploy-infra-img-java-app/terraform init
cd /var/lib/jenkins/workspace/infra\ pipeline/08-jenkins/deploy-infra-img-java-app/terraform apply -auto-approve

echo "Aguardando criação de maquinas ..."
# sleep 10 # 10 segundos

echo $"[ec2-dev-img-jenkins]" > ../ansible/hosts # cria arquivo
echo "$(~/var/lib/jenkins/workspace/infra\ pipeline/08-jenkins/deploy-infra-img-java-app/terraform output | grep public_dns | awk '{print $2;exit}')" | sed -e "s/\",//g" >> ../ansible/hosts # captura output faz split de espaco e replace de ",

echo "Aguardando criação de maquinas ..."
# sleep 10 # 10 segundos

cd ../ansible

echo "Executando ansible ::::: [ ansible-playbook -i hosts provisionar.yml -u ubuntu --private-key /var/lib/jenkins/.ssh/id_rsa ]"
ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook -i hosts provisionar.yml -u ubuntu --private-key /var/lib/jenkins/.ssh/id_rsa