# Simple makefile.
REGISTRY := docker-registry.fill.me.later:5000
PROJECT := go-playground

# Simply use the commit hash as tag.
TAG := $(shell git rev-parse --short `git rev-list -n 1 --abbrev HEAD`)

build:
	docker build -t ${REGISTRY}/${PROJECT}:${TAG} .

push:
	docker push ${REGISTRY}/${PROJECT}:${TAG}

exec:
	docker run -it --rm --name ${PROJECT} ${REGISTRY}/${PROJECT}:${TAG} 
