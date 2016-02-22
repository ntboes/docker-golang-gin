FROM golang:wheezy

RUN mkdir -p $WORKDIR
WORKDIR $WORKDIR

RUN go get github.com/codegangsta/gin

ENTRYPOINT ["/root/installAndStart.sh"]

ADD installAndStart.sh /root/
RUN chmod 755 /root/installAndStart.sh
RUN chmod +x /root/installAndStart.sh
