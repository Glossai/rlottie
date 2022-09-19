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
RUN cmake -DCMAKE_BUILD_TYPE=RELEASE ..
RUN cmake --build /home/rlottie/build --target lottie2png --config RELEASE

ENTRYPOINT [ "sh" ]
