FROM node:slim
RUN npm i -g @warren-bank/hls-proxy

RUN apt update
RUN apt install dumb-init -y
ENV PORT 8080
ENTRYPOINT ["/usr/bin/dumb-init", "--", "hlsd"]
