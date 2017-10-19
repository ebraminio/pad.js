FROM alpine
MAINTAINER Ebrahim Byagowi "<ebrahim@gnu.org>"
RUN apk update && apk add nodejs
ADD index.html /index.js
WORKDIR /files
EXPOSE 9090/tcp
ENTRYPOINT node /index.js --no-cors --no-info --no-mime --timeout=-1
