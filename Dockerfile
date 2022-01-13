FROM golang:1.12

RUN apt-get update
RUN apt-get install -y netcat \
                       python \
                       python-pip \
                       build-essential \
                       libpng-dev
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN apt-get install -y nodejs
RUN npm rebuild node-sass --force
RUN pip install awscli
RUN curl https://glide.sh/get | sh
