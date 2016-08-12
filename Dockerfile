FROM node:slim
RUN mkdir -p /app
COPY . /app
WORKDIR /files
VOLUME /files
EXPOSE 9090
ENTRYPOINT node /app/index.html
