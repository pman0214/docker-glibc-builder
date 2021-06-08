# pman0214/glibc-builder

>Built with [pman0214/docker-glibc-builder], forked from [sgerrand/docker-glibc-builder] to support multi-arch images

[pman0214/docker-glibc-builder]: https://github.com/pman0214/docker-glibc-builder
[sgerrand/docker-glibc-builder]: https://github.com/sgerrand/docker-glibc-builder

A glibc binary package builder in Docker. Produces a glibc binary package that can be imported into a rootfs to run applications dynamically linked against glibc.

## Usage

Build a glibc package based on version 2.33 with a prefix of `/usr/glibc-compat`:

```
docker run --rm --env STDOUT=1 pman0214/glibc-builder 2.33 /usr/glibc-compat > glibc-bin.tar.gz
```

You can also keep the container around and copy out the resulting file:

```
docker run --name glibc-binary pman0214/glibc-builder 2.33 /usr/glibc-compat
docker cp glibc-binary:/glibc-bin-2.33.tar.gz ./
docker rm glibc-binary
```
