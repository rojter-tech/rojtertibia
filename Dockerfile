FROM alpine:edge AS build
# pugixml-dev is in edge/testing
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
  pugixml-dev \
  crypto++-dev

RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/v3.4/main/ \
  boost-dev \
  binutils \
  build-base \
  clang \
  cmake \
  gcc \
  gmp-dev \
  luajit-dev \
  lua-dev \
  make \
  mariadb-connector-c-dev

COPY cmake /usr/src/rojtertibia/cmake/
COPY src /usr/src/rojtertibia/src/
COPY CMakeLists.txt /usr/src/rojtertibia/
WORKDIR /usr/src/rojtertibia/build
RUN cmake .. && make -j8

FROM alpine:edge
# pugixml-dev is in edge/testing
RUN apk add --no-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
  boost-iostreams \
  boost-system \
  crypto++ \
  gmp \
  luajit \
  lua \
  mariadb-connector-c \
  pugixml

RUN ln -s /usr/lib/libcryptopp.so /usr/lib/libcryptopp.so.5.6
COPY --from=build /usr/src/rojtertibia/build/tfs /bin/tfs
COPY data /srv/data/
COPY LICENSE README.md *.dist *.sql key.pem /srv/

EXPOSE 7171 7172
WORKDIR /srv
VOLUME /srv
ENTRYPOINT ["/bin/tfs"]
