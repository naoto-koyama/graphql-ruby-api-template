#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /app/tmp/pids/server.pid

bundle exec rails db:migrate RAILS_ENV=$RAILS_ENV 2>/dev/null || bundle exec rails db:create RAILS_ENV=$RAILS_ENV
