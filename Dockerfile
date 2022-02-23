FROM ruby:2.7.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /myapp

WORKDIR /myapp

COPY blog/ /myapp

RUN bundle install

CMD ["rails", "server"]
