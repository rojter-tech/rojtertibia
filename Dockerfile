FROM alpine:edge AS build
# pugixml-dev is in edge/testing

RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/v3.8/main/ \
  boost-dev=1.66.0-r0

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
  pugixml-dev

COPY cmake /usr/src/forgottenserver/cmake/
COPY src /usr/src/forgottenserver/src/
COPY CMakeLists.txt /usr/src/forgottenserver/
WORKDIR /usr/src/forgottenserver/build
RUN cmake .. && make

FROM alpine:edge
# pugixml-dev is in edge/testing
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/v3.8/main/ \
  boost-iostreams=1.66.0-r0 \
  boost-system=1.66.0-r0 

RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
  crypto++ \
  gmp \
  luajit \
  mariadb-connector-c \
  pugixml

RUN ln -s /usr/lib/libcryptopp.so /usr/lib/libcryptopp.so.5.6
COPY --from=build /usr/src/forgottenserver/build/tfs /bin/tfs
COPY data /srv/data/
COPY LICENSE README.md *.dist *.sql key.pem config.lua /srv/

EXPOSE 7171 7172
WORKDIR /srv
VOLUME /srv
ENTRYPOINT ["/bin/tfs"]
