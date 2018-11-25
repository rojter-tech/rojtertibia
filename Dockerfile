FROM base/devel:latest
RUN echo 'Server=https://archive.archlinux.org/repos/2018/1/1/$repo/os/$arch' > /etc/pacman.d/mirrorlist
RUN pacman -Sy --noconfirm \
  cmake \
  lua51 \
  libmariadbclient \
  luajit

RUN echo 'Server=https://archive.archlinux.org/repos/2016/01/01/$repo/os/$arch' >> /etc/pacman.conf
RUN echo 'Server=https://archive.archlinux.org/repos/2016/01/01/$repo/os/$arch' > /etc/pacman.d/mirrorlist
RUN pacman -Sy
RUN pacman -S --noconfirm boost

COPY cmake /usr/src/rojtertibia/cmake/
COPY src /usr/src/rojtertibia/src/
COPY CMakeLists.txt /usr/src/rojtertibia/
WORKDIR /usr/src/rojtertibia/build
RUN cmake .. && make -j16
COPY data /usr/src/rojtertibia/data/
COPY LICENSE README.md *.dist *.sql /usr/src/rojtertibia/
COPY config.lua.dist /usr/src/rojtertibia/config.lua

EXPOSE 7171 7172
WORKDIR /usr/src/rojtertibia/
VOLUME /usr/src/rojtertibia/
ENTRYPOINT ["/usr/src/rojtertibia/build/src/otserv"]