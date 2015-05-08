FROM ubuntu:14.10
MAINTAINER tobe tobeg3oogle@gmail.com
# modified by Kensel kensela@leishman6.net

RUN apt-get -y update
RUN apt-get -y install git

# Install gitbook
RUN apt-get install -y curl && \
    curl -sL https://deb.nodesource.com/setup | bash - && \
    apt-get install -y nodejs && \
    npm install gitbook-cli -g

# Support gitbook pdf
RUN apt-get install -y calibre

RUN mkdir /gitbook
WORKDIR /gitbook

EXPOSE 4000

CMD ["gitbook", "serve", "/gitbook"]