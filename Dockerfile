FROM alpine

VOLUME [ "/tmp/capture_data" ]

RUN apk add --no-cache tcpdump

CMD [ "-v", "-w", "/tmp/capture_data/capture.pcap", "port 67 or 68" ]
ENTRYPOINT [ "tcpdump" ]
