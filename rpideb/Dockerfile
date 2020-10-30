FROM fscm/debian:buster

ARG __BUILD_DIR__="/build"
ARG __WORK_DIR__="/work"
ARG ARCH="armel"

ENV \
  LANG="C.UTF-8" \
  LC_ALL="C.UTF-8" \
  DEBCONF_NONINTERACTIVE_SEEN="true" \
  DEBIAN_FRONTEND="noninteractive" \
  TIMEFORMAT="=== time taken: %lR (s:%lS u:%lU)"

USER "root"

WORKDIR "${__WORK_DIR__}"

COPY "rpideb" "/usr/sbin/"

SHELL ["/bin/bash", "-c"]

RUN \
  chmod 0755 "/usr/sbin/rpideb"

CMD ["rpideb"]
