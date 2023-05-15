terraform plan -destroy -out=terraform.tfplan \
  -var "do_token=${DO_PAT}" \
  -var "pvt_key=$HOME/.ssh/id_digitalocean" \
  -var "slack_token=${SLACK_TOKEN}" \
  -var "client=${LEARN_OPS_CLIENT_ID}" \
  -var "secret=${LEARN_OPS_SECRET_KEY}" \
  -var "django_secret=${LEARN_OPS_DJANGO_SECRET_KEY}" \
  -var "db_pwd=${LEARN_OPS_PASSWORD}" \
  -var "install_script=/Users/chortlehoort/dev/github/nss/python/LearningPlatform/setup_ubuntu.sh"


echo "terraform apply terraform.tfplan"