# Define the default target
.PHONY: all
all: attach

# Build and run the development container in detached mode
.PHONY: build
build:
	doas docker compose up --build -d

# Attach to the running development container
.PHONY: attach
attach:
	doas docker compose start
	doas docker exec -it cleaner_dev /bin/bash

# Attach to the running development container
.PHONY: stop
stop:
	doas docker stop -t 0 cleaner_dev

# Build the release Docker image
.PHONY: release-build
release-build:
	doas docker build -t cleaner_release -f docker/release_container/Dockerfile .

