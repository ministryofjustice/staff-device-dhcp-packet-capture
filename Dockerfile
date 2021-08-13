FROM alpine

VOLUME [ "/tmp/capture_data" ]

RUN apk add --no-cache bash tcpdump

COPY entrypoint .

CMD [ "./entrypoint" ]
