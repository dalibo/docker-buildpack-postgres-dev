IMAGE=dalibo/buildpack-postgres-dev
.PHONY: all
all: bookworm

%:
	docker build \
		--pull \
		--build-arg http_proxy \
		--tag $(IMAGE):$@ \
		--file Dockerfile.$@ \
	.
