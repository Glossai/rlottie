FROM alpine:3.13

RUN apk update && apk upgrade && apk add --no-cache --update \
        build-base \ 
		gcc \
		libgcc \
        libstdc++ \
		cmake \
        git

ARG BASE_DIR=/home/rlottie
RUN mkdir $BASE_DIR
COPY . $BASE_DIR/
RUN mkdir $BASE_DIR/build
WORKDIR $BASE_DIR/build
RUN cmake ..
RUN make
RUN make install

ENTRYPOINT [ "sh" ]
