FROM alpine
RUN apk update && \
    apk add nodejs

RUN mkdir -p /app
ADD index.html /app/index.html
WORKDIR /files
VOLUME /files
EXPOSE 9090
ENTRYPOINT node /app/index.html
