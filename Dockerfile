FROM ruby:3.1.2

RUN apt-get update && apt-get install -y build-essential
RUN apt-get install default-libmysqlclient-dev libpq-dev

ENV APP_HOME /app
RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD . $app