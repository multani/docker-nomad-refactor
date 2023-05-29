DOCKER_TAG = local/nomad
NOMAD_VERSION = $(shell cat nomad-version)
DOCKERFILE = Dockerfile

.PHONY: all
all: build

.PHONY: build
build:
	docker build --file $(DOCKERFILE) --tag "$(DOCKER_TAG)" --build-arg NOMAD_VERSION="$(NOMAD_VERSION)" .

test:
	docker run --rm "$(DOCKER_TAG)" version
	docker run --rm "$(DOCKER_TAG)" agent -help
