FROM alpine:edge AS build
# pugixml-dev is in edge/testing

RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/v2.6/main/ \
  boost-dev=1.53.0-r0

RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
  binutils \
  build-base \
  clang \
  cmake \
  crypto++-dev \
  gcc \
  gmp-dev \
  luajit-dev \
  make \
  mariadb-connector-c-dev \
  libxml2-dev \
  lua-dev \
  pugixml-dev

COPY cmake /usr/src/rojtertibia/cmake/
COPY src /usr/src/rojtertibia/src/
COPY CMakeLists.txt /usr/src/rojtertibia/
WORKDIR /usr/src/rojtertibia/build
RUN cmake .. && make -j8

FROM alpine:edge
# pugixml-dev is in edge/testing
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/v2.6/main/ \
  boost-iostreams=1.53.0-r0 \
  boost-system=1.53.0-r0

RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
  crypto++ \
  gmp \
  luajit \
  mariadb-connector-c \
  pugixml

RUN ln -s /usr/lib/libcryptopp.so /usr/lib/libcryptopp.so.5.6
COPY --from=build /usr/src/rojtertibia/build/tfs /bin/tfs
COPY data /srv/data/
COPY LICENSE README.md *.dist *.sql key.pem /srv/
COPY config.lua.dist /srv/config.lua

EXPOSE 7171 7172
WORKDIR /srv
VOLUME /srv
ENTRYPOINT ["/bin/tfs"]
