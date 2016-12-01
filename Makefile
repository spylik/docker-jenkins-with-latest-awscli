.PHONY: all run build help

VERSION ?= latest
PORTS_MAPPING ?= -p 8080:8080 -p 50000:50000

DOCKERUSER ?= spyl
REPO ?= jenkins-with-latest-awscli

IMG_NAME = jenkins-latest-cli

all: build run

help: ## This help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {sub("\\\\n",sprintf("\n%22c"," "), $$2);printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

build: ## Build docker image from Dockerfile 
	docker build -t $(DOCKERUSER)/$(REPO):$(VERSION) .

run: ## Run docker image
	docker run --name $(IMG_NAME) $(PORTS_MAPPING) -v data:/var/jenkins_home $(DOCKERUSER)/$(REPO)
