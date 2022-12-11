# Playground repo

A repository created for practicing Github Actions  
Feel free to fork this repository and work in the forked version.

## Initial setup and validations

* Add License
* Add README.md
* Add .editorconfig
* Publish Branching Strategy (Contributors guide)
* Setup locally SonarLint

## Check for every feature branch

* Check .editorconfig
* Code lint and style
* Code unit tests
* Check for hardcoded secrets - gitleaks
* SAST - SonarCloud; Review code smells and security issues
* SCA - Snyk; review security issues
* Run checks in parallel
* Practice PR - see results

## Build and upload

* Implement job dependency
* Run only on the main branch
* Build Docker
* Scan the docker - trivy / snyk
* Push the Docker image
* Set immutable tag?
* Security scan in repository - periodic scans?

## Test database changes

* Test DB changes - flyway

## Configure cron based checks

* Run checks once a day

## Deploy

* Deploy to UAT
* DAST - ZAP
* SSL Check - ssllabs

## Additional

* Integration test
* Infrastructure test
* More code quality tests
* GitHub issues integration
* Measure Lead time
* Add GitHub self-hosted runner
* Add Chat notifications
* Commit signature verification
* Sign container images
* Use security hardened base image - CIS
* Use alternative Docker repositories - <https://gallery.ecr.aws>
* Create PR templates
* Rewrite all steps to be command lines instead of GitHub Actions
* Repeat the same steps in GitLab CI, Azure DevOps or BitBucket

## Setup AWS account

* Create AWS account - <https://aws.amazon.com/premiumsupport/knowledge-center/create-and-activate-aws-account/>
* Redeem credits - <https://aws.amazon.com/awscredits/>
* Set Budget alarm - <https://docs.aws.amazon.com/AmazonCloudWatch/latest/monitoring/monitor_estimated_charges_with_cloudwatch.html>

## Infrastructure as Code (IaC)

* terraform folder
* .gitignore
* Setup Cloud9
* Terraform
  * Install Terraform - <https://developer.hashicorp.com/terraform/downloads>
  * Install AWS CLI - <https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html> 'aws sts get-caller-identity'
  * Create EC2 - <https://developer.hashicorp.com/terraform/tutorials/aws-get-started/aws-build>
  * Destroy EC2
  * Script vs Terraform - <https://blog.gruntwork.io/why-we-use-terraform-and-not-chef-puppet-ansible-saltstack-or-cloudformation-7989dad2865c>
  * OS vs Infrastructure configuration
  * Variables
  * Files structure
  * Modules
  * Terraform backends - <https://developer.hashicorp.com/terraform/language/settings/backends/s3>
  * Change the backend to S3
  * Terraform Up and Running - <https://www.amazon.com/Terraform-Running-Writing-Infrastructure-Code/dp/1098116747>
  * Terraform best practices book - <https://www.terraform-best-practices.com/>
  * IaC layers - IaC layers.png ; CloudFormation best practices - <https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/best-practices.html#organizingstacks>
  * Terraform orchestration
  * SAST - checkov - <https://www.checkov.io/2.Basics/Installing%20Checkov.html> 'checkov -d .'
  * Terraform pipeline - Terraform pipeline.png
  * Cost - InfraCost - <https://www.infracost.io>
  * Multiple environments
  * Terraform workspaces - <https://developer.hashicorp.com/terraform/language/state/workspaces>
  * Terraform providers - <https://registry.terraform.io/browse/providers>
  * Terraform provider version lock
  * Terraform registry - <https://registry.terraform.io/>
  * Are all resources supported by the terraform providers?
  * Review Hristo's code - <https://github.com/voyvodov/devops-academy-demo/>
  * CDK / Pulumi - <https://github.com/severel/aws-cdk-cis/blob/main/aws-cdk-cis/aws_cdk_cis/aws_cdk_cis_stack.py>
  * IaC automated testing
  * IaC long term support
