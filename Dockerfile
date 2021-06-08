FROM ubuntu:20.04
LABEL maintainer="Shigemi ISHIDA <ish@fun.ac.jp>"
ENV DEBIAN_FRONTEND=noninteractive \
    GLIBC_VERSION=2.33 \
    PREFIX_DIR=/usr/glibc-compat
RUN apt-get -q update \
	&& apt-get -qy install \
		bison \
		build-essential \
		gawk \
		gettext \
		openssl \
		python3 \
		texinfo \
		wget
COPY configparams /glibc-build/configparams
COPY builder /builder
ENTRYPOINT ["/builder"]
