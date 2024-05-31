# DirectoryListerDocker

Build Directory Lister Docker Image.

## Introduction

Directory Lister is the easiest way to expose the contents of any web-accessible folder for browsing and sharing.

- [View the demo](https://demo.directorylister.com)
- [Documentation](https://docs.directorylister.com)
- [GitHub](https://github.com/DirectoryLister/DirectoryLister)

The image is created by and maintained by [zoumingzhe](https://github.com/zoumingzhe).

## Usage

```shell
docker pull docker.io/mingzhebaosheng/directory-lister:latest -p 8008:80 -v ./files:/var/www/html/files
```

docker-compose:

```docker-compose
version: '3'

services:
  app:
    container_name: directory-lister
    image: docker.io/mingzhebaosheng/directory-lister:latest
    privileged: true
    user: ${HOST_USER_ID:-0}:${HOST_GROUP_ID:-0}
    ports:
      - ${APP_PORT:-8008}:80
    volumes:
      - ./files:/var/www/html/files
```
