FROM ubuntu:latest

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
RUN cmake .. && make -j16
COPY data /usr/src/rojtertibia/data/
COPY LICENSE README.md *.dist *.sql /usr/src/rojtertibia/
COPY config.lua.dist /usr/src/rojtertibia/config.lua

EXPOSE 7173 7174
WORKDIR /usr/src/rojtertibia/
VOLUME /usr/src/rojtertibia/
ENTRYPOINT ["/usr/src/rojtertibia/build/src/otserv"]
