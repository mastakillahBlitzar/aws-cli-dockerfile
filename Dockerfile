FROM alpine:3.6
RUN apk -v --update add \
        python \
        py-pip \
        && \
    pip install --upgrade awscli s3cmd  && \
    rm /var/cache/apk/*
VOLUME /root/.aws
VOLUME /project
WORKDIR /project
ENTRYPOINT ["aws"]
