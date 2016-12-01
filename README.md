# docker-jenkins-with-latest-awscli

This repo contain Dockerfile to build Docker image from official Jenkins image with latest Amazon awscli.

## Why?

Official image based on quite old Debian release which bundled with old awscli.
Due this, Jenkins do not able to pull from AWS Code Commit repos using AWS credentials.

## Usage

You can pull and run latest builded version from DockerHub image registry:

```
$ docker run --name myjenkins -p 8080:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home spyl/jenkins-with-latest-awscli
```

Docker will use `/var/jenkins_home` as Docker volume (you can periodically backup this directory with settings). 
After stop container, you will able to re-use your Jenkins settings with.

```
$ docker start myjenkins
```

More information about how to go with Jenkins docker image you can find at [Official Jenkins Docker image repository](https://hub.docker.com/_/jenkins/)
