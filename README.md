# docker-jenkins-with-latest-awscli

This repo contain Dockerfile to build Docker image from official Jenkins image with latest Amazon awscli.

## Why?

Official image based on quite old Debian release which bundled with old awscli.
Due this, Jenkins do not able to pull from [AWS CodeCommit](https://aws.amazon.com/codecommit/) repos using [AWS IAM](https://aws.amazon.com/documentation/iam/) credentials.

## Usage

You can pull image from docker hub, or you can go with [Makefile](Makefile) (RECOMMENDED) which will take care allthings and it's easy to make it as port of [Docker Compose](https://docs.docker.com/compose/) project.
```
$ git clone https://github.com/spylik/docker-jenkins-with-latest-awscli
$ cd docker-jenkins-with-latest-awscli
$ make
```
`make` will create in current directory data directory (if it not yet exists) and will handle all run and re-run (in case of restart) routine.
You will able to backup this directory and re-use your Jenkins settings and modules after every new upgrade.
If you need some extra (for example re-build new image), run `make help`.

More information about how to go with Jenkins docker image you can find at [Official Jenkins Docker image repository](https://hub.docker.com/_/jenkins/)

Also, please read about [Integrating AWS CodeCommit with Jenkins](https://aws.amazon.com/blogs/devops/integrating-aws-codecommit-with-jenkins/) and do not forget to add your aws credentials to the data folder.
