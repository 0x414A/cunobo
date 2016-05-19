FROM ruby:2.3.0

RUN apt-get update -qq && apt-get install -y build-essential patch

# for postgres
RUN apt-get install -y libpq-dev

# for nokogiri
RUN apt-get install -y libxml2-dev libxslt1-dev ruby-dev zlib1g-dev liblzma-dev

# for capybara-webkit
RUN apt-get install -y libqt4-webkit libqt4-dev xvfb

# for a JS runtime
RUN apt-get install -y nodejs npm
RUN ln -s "$(which nodejs)" /usr/bin/node

ENV APP_HOME /cunobo_app
ENV NODE_PATH ./node_modules
ENV BUNDLE_PATH ./.bundle

RUN mkdir $APP_HOME
WORKDIR $APP_HOME

ADD . $APP_HOME
