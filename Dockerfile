FROM ruby:3.3.1

RUN apt-get update -qq && \
    apt-get install -y build-essential libpq-dev

WORKDIR /app

COPY . .

RUN gem install bundler -v 2.5.9

RUN bundle install

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
