FROM ruby:2.3.3

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs netcat  
RUN mkdir /myapp

WORKDIR /Users/menlo07082017/workspace/rails-kube-demo

ADD Gemfile /Users/menlo07082017/workspace/rails-kube-demo/Gemfile  
ADD Gemfile.lock /Users/menlo07082017/workspace/rails-kube-demo/Gemfile.lock

RUN bundle install  
ADD . /Users/menlo07082017/workspace/rails-kube-demo  
