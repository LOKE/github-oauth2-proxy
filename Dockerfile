FROM alpine:3.6

RUN apk --update add curl

RUN curl -sL -o oauth2_proxy.tar.gz \
    "https://github.com/bitly/oauth2_proxy/releases/download/v2.2/oauth2_proxy-2.2.0.linux-amd64.go1.8.1.tar.gz" \
  && tar xzvf oauth2_proxy.tar.gz \
  && mv oauth2_proxy-2.2.0.linux-amd64.go1.8.1/oauth2_proxy /bin/ \
  && chmod +x /bin/oauth2_proxy \
  && rm -r oauth2_proxy*

ADD run_proxy.sh /run_proxy.sh
RUN chmod +x /run_proxy.sh

CMD [ "/run_proxy.sh" ]
