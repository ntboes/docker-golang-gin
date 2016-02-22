FROM golang:wheezy

RUN mkdir -p /go/src/github.com/colldesk
WORKDIR /go/src/github.com/colldesk

RUN go get github.com/codegangsta/gin

ENTRYPOINT ["/root/installAndStart.sh"]

ADD installAndStart.sh /root/
RUN chmod 755 /root/installAndStart.sh
RUN chmod +x /root/installAndStart.sh
