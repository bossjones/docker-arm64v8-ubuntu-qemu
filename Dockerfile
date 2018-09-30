# SOURCE: https://hub.docker.com/r/arm64v8/ubuntu/
FROM arm64v8/ubuntu:bionic

LABEL Maintainer "Jarvis <jarvis@theblacktonystark.com>"

ADD qemu-aarch64-static /usr/bin
