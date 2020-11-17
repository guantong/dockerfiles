# Elasticsearch
# docker pull barnybug/elasticsearch
FROM java:openjdk-8-jre

ENV ES_VERSION 5.1.1

# download and unpack elasticsearch
RUN wget -q https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.1.1.tar.gz -O - | tar zxvf - && \
    mv /elasticsearch-5.1.1 /elasticsearch && \
    rm /elasticsearch/bin/*.exe

ADD elasticsearch.yml /elasticsearch/config/elasticsearch.yml

VOLUME ["/data", "/logs"]

EXPOSE 9200 9300
CMD ["elasticsearch/bin/elasticsearch"]
