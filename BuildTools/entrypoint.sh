#!/usr/bin/env bash

cd /opt/project || exit
bundle install
rails db:migrate

exec "$@"
