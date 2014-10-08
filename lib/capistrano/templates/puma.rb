#!/usr/bin/env puma

directory '/var/www/apibugfreak/current'
rackup '/var/www/apibugfreak/current/config.ru'
environment ENV['RACK_ENV']

pidfile '/var/www/apibugfreak/shared/tmp/pids/puma.pid'
state_path '/var/www/apibugfreak/shared/tmp/pids/puma.state'
stdout_redirect '/var/www/apibugfreak/shared/log/puma_access.log', '/var/www/apibugfreak/shared/log/puma_error.log', true

threads 0, 1

bind 'unix:/var/www/apibugfreak/shared/tmp/sockets/puma.sock'
workers 2

preload_app!

on_restart do
  puts 'Refreshing Gemfile'
  ENV['BUNDLE_GEMFILE'] = '/var/www/apibugfreak/current/Gemfile'
end
