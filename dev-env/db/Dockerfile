FROM postgres:16

# Time ZoneAc
ENV TZ Asia/Tokyo

# Language
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8

RUN apt-get update && \
    apt-get install -y --no-install-recommends tzdata locales && \
    echo "Asia/Tokyo" > /etc/timezone && \
    ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    echo "ja_JP.UTF-8 UTF-8" >> /etc/locale.gen && \
    locale-gen ja_JP.UTF-8 && \
    update-locale LANG=ja_JP.UTF-8 && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

# Workdir
WORKDIR /usr/src/postgres-db/
RUN mkdir -p /usr/src/postgres-db/tmp/
COPY ./db/conn_db.sh /usr/src/postgres-db/conn-db.sh
RUN chmod +x /usr/src/postgres-db/conn-db.sh
