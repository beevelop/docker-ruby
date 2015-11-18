FROM beevelop/base:latest

MAINTAINER Maik Hummel <m@ikhummel.com>

RUN apt-get update && apt-get install -y ruby-full
