FROM debian:jessie
RUN apt-get update && apt-get install -y \
cmake \
build-essential \
liblua5.2-dev \
libgmp3-dev \
libmysqlclient-dev \
libboost-system-dev \
libboost-iostreams-dev \
libpugixml-dev \
libcrypto++-dev

COPY cmake /usr/src/rojtertibia/cmake/
COPY src /usr/src/rojtertibia/src/
COPY CMakeLists.txt /usr/src/rojtertibia/
WORKDIR /usr/src/rojtertibia/build
RUN cmake .. && make -j8

RUN ln -s /usr/lib/libcryptopp.so /usr/lib/libcryptopp.so.5.6
COPY LICENSE README.md *.dist *.sql key.pem /srv/

EXPOSE 7173 7174
WORKDIR /usr/src/rojtertibia
VOLUME /usr/src/rojtertibia
ENTRYPOINT ["/usr/src/rojtertibia/build/tfs"]
