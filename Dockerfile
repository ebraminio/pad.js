FROM alpine
RUN apk update && \
    apk add nodejs

ADD index.html /index.js
WORKDIR /files
VOLUME /files
EXPOSE 9090
ENTRYPOINT node /index.js