FROM ubuntu:latest AS build

RUN apt-get update -y && apt-get install -y \
  git \
  cmake \
  make \
  gcc \
  liblua5.1-dev \
  libgmp3-dev \
  libmysqlclient-dev \
  libboost-all-dev \
  libxml2-dev \
  liblzma-dev \
  libluajit-5.1-dev

COPY cmake /usr/src/rojtertibia/cmake/
COPY src /usr/src/rojtertibia/src/
COPY CMakeLists.txt /usr/src/rojtertibia/
WORKDIR /usr/src/rojtertibia/build
RUN cmake .. && make -j8

FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y \
  libboost-system1.65.1 \
  libboost-iostreams1.65.1 \
  libluajit-5.1-common \
  libmysqlclient20 \
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
