## Wrk (HTTP benchmarking tool) Dockerfile

This repository contains **Dockerfile** of [wrk](https://github.com/wg/wrk) for [Docker](https://www.docker.io/)'s [trusted build](https://index.docker.io/u/klaemo/wrk/) published to the public [Docker Registry](https://index.docker.io/).


### Dependencies

* [ubuntu:12.04](https://index.docker.io/u/_/ubuntu)


### Installation

1. Install [Docker](https://www.docker.io/).

2. Download [trusted build](https://index.docker.io/u/klaemo/wrk/) from public [Docker Registry](https://index.docker.io/): `docker pull klaemo/wrk`

   (alternatively, you can build an image from Dockerfile: `docker build -t="klaemo/wrk" github.com/klaemo/docker-wrk`)


### Usage

    docker run -i -t --rm klaemo/wrk
