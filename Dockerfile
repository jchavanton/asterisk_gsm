FROM debian:bookworm

RUN apt-get update \
    && apt-get dist-upgrade -y \
    && apt install -y \
        autoconf \
        automake \
        build-essential \
        cmake \
        ffmpeg \
        git \
        libasound2-dev \
        libavformat-dev \
        libcurl4-openssl-dev \
        libdb-dev \
        libedit-dev \
        libexpat1-dev \
        libgdbm-dev \
        libgnutls28-dev \
        libjpeg-dev \
        libldns-dev \
        liblua5.1-0-dev  \
        liblua5.2-dev \
        libncurses5 \
        libncurses5-dev \
        libogg-dev \
        libopus-dev \
        libpcre3-dev \
        libperl-dev \
        libpq-dev \
        libsndfile1-dev \
        libspeex-dev \
        libspeexdsp-dev \
        libsqlite3-dev \
        libssl-dev \
        libswscale-dev \
        libtiff5-dev \
        libtool \
        libtool-bin \
        libvorbis-dev \
        libx11-dev \
        lua5.1  \
        luarocks \
        make \
        net-tools \
        python-dev-is-python3 \
        subversion \
        unixodbc-dev \
        unzip \
        uuid-dev \
        vim \
        wget \
        yasm \
        zlib1g-dev \
        lua-json \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*

RUN apt-get install -y bluez bluez-hcidump libbluetooth-dev

COPY entry.sh /
ENTRYPOINT ["/entry.sh"]
