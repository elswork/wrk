# Wrk

A [Docker](http://docker.com) file to build [wrt](https://github.com/wg/wrk) a HTTP benchmarking tool capable of generating significant load when run on a single multi-core CPU.

> Be aware! You should read carefully the usage documentation of every tool!

## Thanks to

- [Will Glozer](https://glozer.net/) creator of [wrt](https://github.com/wg/wrk)

## Details

- [GitHub](https://github.com/elswork/wrk)
- [Deft.Work my personal blog](https://deft.work)

| Docker Hub | Docker Pulls | Docker Stars | Size/Layers |
| --- | --- | --- | --- |
| [wrt](https://hub.docker.com/r/elswork/wrt "elswork/wrt on Docker Hub") | [![](https://img.shields.io/docker/pulls/elswork/wrt.svg)](https://hub.docker.com/r/elswork/wrt "wrt on Docker Hub") | [![](https://img.shields.io/docker/stars/elswork/wrt.svg)](https://hub.docker.com/r/elswork/wrt "wrt on Docker Hub") | [![](https://images.microbadger.com/badges/image/elswork/wrt.svg)](https://microbadger.com/images/elswork/wrt "wrt on microbadger.com") |

## Build Instructions
~~Build for amd64, armv7l or arm64 architecture (thanks to its [Multi-Arch](https://blog.docker.com/2017/11/multi-arch-all-the-things/) base image)~~

```bash
docker build -t elswork/wrt .
```

## Usage Example

### Benchmark

```bash
docker run --rm elswork/wrt \
-t4 -c10 -d30s https://www.theworldsworstwebsiteever.com/
```
or
```bash
make bench SITE=https://www.theworldsworstwebsiteever.com/
```

**[Sponsor me!](https://github.com/sponsors/elswork) Together we will be unstoppable.**