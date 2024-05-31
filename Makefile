MAKEFLAGS += --always-make

all: up

up:
	podman-compose up

down:
	podman-compose down
