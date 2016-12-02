# docker-jenkins-with-latest-awscli

This repo contain Dockerfile to build Docker image from official Jenkins image with latest Amazon awscli.

## Why?

Official image based on quite old Debian release which bundled with old awscli.
Due this, Jenkins do not able to pull from AWS Code Commit repos using AWS credentials.

## Usage

You can pull image from docker hub, or you can go with Makefile (RECOMMENDED) which will take care allthings.
```
$ git clone https://github.com/spylik/docker-jenkins-with-latest-awscli
$ cd docker-jenkins-with-latest-awscli
$ make run 
```
`make run` will handle allthings and if you need some extra (for example re-build new image), run `make help`.

More information about how to go with Jenkins docker image you can find at [Official Jenkins Docker image repository](https://hub.docker.com/_/jenkins/)

Also, please read about [Integrating AWS CodeCommit with Jenkins](https://aws.amazon.com/blogs/devops/integrating-aws-codecommit-with-jenkins/) and do not forget to add your aws credentials to the data folder.
