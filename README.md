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

* Code lint and style
* Check .editorconfig
* Check for hardcoded secrets
* SAST - SonarCloud
* SCA - Snyk
* Run checks in parallel

## Build and upload

* Implement job dependency
* Run only on the main branch
* Build Docker
* Scan the docker - trivy / snyk
* Push the Docker image - set immutable tag?
* Set immutable tag
* Security scan in repository - periodic

## Test database changes

* Test DB changes - flyway

## Configure cron based checks

* Run checks once a day

## Deploy

* Deploy to UAT
* DAST - ZAP
* SSL Check - sslyze

## Additional

* Integration test
* Infrastructure test
* More code quality tests
* Matrix build
* GitHub issues integration
* Measure Lead time
* Add GitHub self-hosted runner
* Add Chat notifications
* Commit signature verification
* Sign container images
* Use security hardened base image - CIS
* create PR templates
