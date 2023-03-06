FROM ubuntu:lunar

COPY run.sh /run.sh

RUN \
    echo "Install libheif" && \
    apt-get update && \
    apt-get install -y libheif1 libheif-examples

CMD ls && sh run.sh