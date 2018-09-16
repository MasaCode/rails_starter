FROM ruby:2.5.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /rails_starter
WORKDIR /rails_starter
ADD Gemfile /rails_starter/Gemfile
ADD Gemfile.lock /rails_starter/Gemfile.lock
RUN bundle install
ADD . /rails_starter
