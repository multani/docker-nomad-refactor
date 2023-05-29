DOCKER_TAG = local/nomad
NOMAD_VERSION = $(shell cat nomad-version)

.PHONY: all
all: build

.PHONY: build
build:
	docker build --tag "$(DOCKER_TAG)" --build-arg NOMAD_VERSION="$(NOMAD_VERSION)" .
