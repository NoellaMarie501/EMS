FROM ruby:3.0-bullseye as base

RUN apt-get update -qq && apt-get install -y build-essential apt-utils libpq-dev nodejs

WORKDIR /ems

RUN gem install bundler

COPY Gemfile* ./

RUN bundle install
