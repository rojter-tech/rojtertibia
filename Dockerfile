FROM alpine:edge AS build

RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/v3.8/main/ \
  boost-dev=1.66.0-r0

RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/main/ \
  binutils \
  build-base \
  cmake \
  libxml2-dev \
  gcc \
  gmp-dev \
  luajit-dev \
  make \
  mariadb-connector-c-dev

COPY cmake /usr/src/rojtertibia/cmake/
COPY src /usr/src/rojtertibia/src/
COPY CMakeLists.txt /usr/src/rojtertibia/
WORKDIR /usr/src/rojtertibia/build
RUN cmake .. && make -j16

FROM alpine:edge

RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/v3.8/main/ \
  boost-iostreams=1.66.0-r0 \
  boost-system=1.66.0-r0 

RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/main/ \
  gmp \
  luajit \
  mariadb-connector-c \
  libxml2

RUN ln -s /usr/lib/libcryptopp.so /usr/lib/libcryptopp.so.5.6
COPY --from=build /usr/src/rojtertibia/build/tfs /bin/tfs
COPY data /srv/data/
COPY LICENSE README.md *.dist *.sql key.pem /srv/
COPY config.lua.dist /srv/config.lua

EXPOSE 7171 7172
WORKDIR /srv
VOLUME /srv
ENTRYPOINT ["/bin/tfs"]