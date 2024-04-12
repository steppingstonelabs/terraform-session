#!/bin/bash

source .env

terraform plan -destroy -out=terraform.tfplan \
  -var "do_token=${DO_PAT}" \
  -var "pvt_key=$HOME/.ssh/id_digitalocean" \
  -var "slack_token=${SLACK_TOKEN}" \
  -var "client=${LEARN_OPS_CLIENT_ID}" \
  -var "secret=${LEARN_OPS_SECRET_KEY}" \
  -var "django_secret=${LEARN_OPS_DJANGO_SECRET_KEY}" \
  -var "allowed_hosts=${LEARN_OPS_ALLOWED_HOSTS}" \
  -var "db_user=${LEARN_OPS_USER}" \
  -var "db_host=${LEARN_OPS_HOST}" \
  -var "db_name=${LEARN_OPS_DB}" \
  -var "db_pwd=${LEARN_OPS_PASSWORD}" \
  -var "su=${LEARN_OPS_SUPERUSER_NAME}" \
  -var "su_pwd=${LEARN_OPS_SUPERUSER_PASSWORD}" \
  -var "install_script=./setup_ubuntu.sh"

echo "terraform apply terraform.tfplan"
terraform apply terraform.tfplan