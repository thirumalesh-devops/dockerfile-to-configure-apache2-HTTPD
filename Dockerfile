FROM ubuntu:latest

LABEL maintainer="THIRUMALESH_THIRU"

LABEL description="EXTRACTING THE TAR FILE"

RUN apt-get update && \
    apt-get install -y wget tar

WORKDIR /app

ARG TAR_URL="https://my-bucket-index.s3.ap-south-1.amazonaws.com/classplays.tar.gz"

RUN wget $TAR_URL -O classplays.tar.gz && \
    tar -xzvf classplays.tar.gz && \
    rm classplays.tar.gz

CMD ["/bin/bash"]
