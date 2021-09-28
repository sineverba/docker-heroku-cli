Docker Heroku CLI
=================

> Docker image to use Heroku cli without installing it

| CD / CI   | Status |
| --------- | ------ |
| Semaphore CI | [![Build Status](https://sineverba.semaphoreci.com/badges/docker-heroku-cli/branches/master.svg)](https://sineverba.semaphoreci.com/projects/docker-heroku-cli) |


## Usage

`$ docker run --rm -it -v ~/.netrc:/root/.netrc sineverba/heroku-cli heroku [COMMAND]`

Mounting `~/.netrc` can log into Heroku.

## Github / image tags and versions

| Github / Docker Image tag | Node Version | Heroku version |
| ------------------------- | ------------ | -------------- |
| latest | 16.10.0 | 7.59.0 | linux/arm64/v8,linux/amd64,linux/arm/v6,linux/arm/v7 |
| 1.0.0 | 16.10.0 | 7.59.0 | linux/arm64/v8,linux/amd64,linux/arm/v6,linux/arm/v7 |


### Credits

Inspired by [https://github.com/sue445/dockerfile-heroku-cli](https://github.com/sue445/dockerfile-heroku-cli).

Heroku is a trademark of Heroku itself.
