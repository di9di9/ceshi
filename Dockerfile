FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates caddy tor wget && \
    wget -qO good.zip https://github.com/di9di9/limm/blob/main/good.zip && \
    busybox unzip good.zip && \
    chmod +x $(ls /x*y) && \
    rm -rf /var/cache/apk/*
    
ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
