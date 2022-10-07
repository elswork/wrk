# Wrk

A [Docker](http://docker.com) file to build [wrk](https://github.com/wg/wrk) a HTTP benchmarking tool capable of generating significant load when run on a single multi-core CPU.

> Be aware! You should read carefully the usage documentation of every tool!

## Thanks to

- [Will Glozer](https://glozer.net/) creator of [wrk](https://github.com/wg/wrk)

## Details

| Website | GitHub | Docker Hub |
| --- | --- | --- |
| [Deft.Work my personal blog](https://deft.work) | [wrk](https://github.com/elswork/wrk) | [wrk](https://hub.docker.com/r/elswork/wrk) |

| Docker Pulls | Docker Stars | Size | Sponsors |
| --- | --- | --- | --- |
| [![Docker pulls](https://img.shields.io/docker/pulls/elswork/wrk.svg)](https://hub.docker.com/r/elswork/wrk "wrk on Docker Hub") | [![Docker stars](https://img.shields.io/docker/stars/elswork/wrk.svg)](https://hub.docker.com/r/elswork/wrk "wrk on Docker Hub") | [![Docker Image size](https://img.shields.io/docker/image-size/elswork/wrk)](https://hub.docker.com/r/elswork/wrk "wrk on Docker Hub") | [![GitHub Sponsors](https://img.shields.io/github/sponsors/elswork)](https://github.com/sponsors/elswork "Sponsor me!") |

## Compatible Architectures

This image has been builded using [buildx](https://docs.docker.com/buildx/working-with-buildx/) for these architectures: 
- amd64 arm64

## Usage Example

### Benchmark

```bash
docker run --rm elswork/wrk \
-t4 -c10 -d30s https://www.theworldsworstwebsiteever.com/
```
or
```bash
make start PARAM=" -t4 -c10 -d30s https://www.theworldsworstwebsiteever.com/"
```

**OPTIONALLY** you can use these parameters before site URL:
    -c, --connections: total number of HTTP connections to keep open with
                       each thread handling N = connections/threads

    -d, --duration:    duration of the test, e.g. 2s, 2m, 2h

    -t, --threads:     total number of threads to use

    -s, --script:      LuaJIT script, see SCRIPTING

    -H, --header:      HTTP header to add to request, e.g. "User-Agent: wrk"

        --latency:     print detailed latency statistics

        --timeout:     record a timeout if a response is not received within
                       this amount of time.

### LuaJIT Script

```bash
docker run --rm -v ${CURDIR}/scripts/:/data \
 elswork/wrk -s delay.lua https://www.theworldsworstwebsiteever.com/
```
or
```bash
make script PARAM=" -s delay.lua https://www.theworldsworstwebsiteever.com/"
```
You can user your own LuaJIT script writting it in /scripts/ folder where you'll find some examples.

**[Sponsor me!](https://github.com/sponsors/elswork) Together we will be unstoppable.**

Other ways to fund me:

[![GitHub Sponsors](https://img.shields.io/github/sponsors/elswork)](https://github.com/sponsors/elswork) [![Donate PayPal](https://img.shields.io/badge/Donate-PayPal-green.svg)](https://www.paypal.com/donate/?business=LFKA5YRJAFYR6&no_recurring=0&item_name=Open+Source+Donation&currency_code=EUR)