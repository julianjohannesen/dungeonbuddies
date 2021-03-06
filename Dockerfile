FROM ruby:2.4.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /dungeonbuddies
WORKDIR /dungeonbuddies

COPY Gemfile /dungeonbuddies/Gemfile
COPY Gemfile.lock /dungeonbuddies/Gemfile.lock

RUN bundle install

COPY . /dungeonbuddies
