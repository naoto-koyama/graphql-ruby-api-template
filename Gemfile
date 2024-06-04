# frozen_string_literal: true

source "https://rubygems.org"

ruby "3.3.1"
gem "rails", "~> 7.1.3", ">= 7.1.3.3"

gem "graphql", "~> 2.3"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "rack-cors"
gem "tzinfo-data", platforms: %i[windows jruby]

group :development do
  gem "dotenv-rails"
  gem "graphiql-rails", "~> 1.10"
  gem "spring"
end

group :development, :test do
  gem "debug", platforms: %i[mri windows]
  gem "rubocop", require: false
  gem "rubocop-rails", require: false
end

group :test do
  gem "factory_bot_rails"
  gem "faker"
  gem "rspec-rails"
  gem "shoulda-matchers", require: false
end
