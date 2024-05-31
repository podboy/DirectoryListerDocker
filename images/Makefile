MAKEFLAGS += --always-make

all: build-image

build-image:
	podman build --file Dockerfile --tag directory-lister:latest .
build-image-3.12.3:
	podman build --file Dockerfile-3.12.3 --tag directory-lister:3.12.3 --tag directory-lister:latest .
build-image-4.0.0:
	podman build --file Dockerfile-4.0.0 --tag directory-lister:4.0.0 --tag directory-lister:latest .

login:
	podman login --verbose docker.io

push-image: login
	podman push localhost/directory-lister:latest mingzhebaosheng/directory-lister:latest
push-image-3.12.3: login build-image-3.12.3
	podman push localhost/directory-lister:3.12.3 mingzhebaosheng/directory-lister:3.12.3
push-image-4.0.0: login build-image-4.0.0
	podman push localhost/directory-lister:4.0.0 mingzhebaosheng/directory-lister:4.0.0

clean-image:
	podman image prune --all --force

save-image:
	podman save --output directory-lister.latest.tar directory-lister:latest

clean: clean-image
	podman system prune --all --force
