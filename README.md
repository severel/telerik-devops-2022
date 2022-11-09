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

## test1
