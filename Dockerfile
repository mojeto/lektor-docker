FROM python:2.7

MAINTAINER SoftInstigate <info@softinstigate.com>

WORKDIR /opt/lektor

RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN curl -sS http://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb http://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update && apt-get install -y apt-utils nodejs yarn
RUN yarn global add typings@2.x bower@1.x gulp@3.x grunt-cli@1.x
RUN pip install 'Lektor==3.0.1' awscli
