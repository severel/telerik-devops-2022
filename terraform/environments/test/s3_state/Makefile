# SHELL := /bin/bash
INIT_CONFIG=-backend-config="../s3_backend.tfvars"
VARIABLES=-var-file="../global.tfvars"

all:
	echo "skip"

init:
	terraform init -no-color $(INIT_CONFIG)

plan:
	terraform validate -no-color
	terraform plan -no-color ${VARIABLES}

plandestroy:
	terraform plan -destroy -no-color ${VARIABLES}

apply:
	terraform apply -auto-approve -no-color ${VARIABLES}

destroy:
	terraform destroy -auto-approve -no-color ${VARIABLES}

output:
	terraform output
