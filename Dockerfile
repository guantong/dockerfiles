# Elasticsearch
# docker pull barnybug/elasticsearch
FROM java:openjdk-8-jre

ENV ES_VERSION 5.1.1

# download and unpack elasticsearch
RUN wget -q https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.1.1.tar.gz -O - | tar zxvf - && \
    mv /elasticsearch-5.1.1 /elasticsearch && \
    rm /elasticsearch/bin/*.exe

RUN chgrp -R 0 /usr/share/elasticsearch && \
    chmod -R g+rw /usr/share/elasticsearch && \
    find /usr/share/elasticsearch -type d -exec chmod g+x {} + && \
    ulimit -n 65536 && \
    ulimit -u 2048 && \
    echo "*  -  nofile  65536" >> /etc/security/limits.conf && \
    rm -fr /usr/share/elasticsearch/plugins/x-pack

ADD elasticsearch.yml /elasticsearch/config/elasticsearch.yml

VOLUME ["/data", "/logs"]

EXPOSE 9200 9300
CMD ["elasticsearch/bin/elasticsearch"]
