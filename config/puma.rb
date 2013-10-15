rails_env = ENV['RAILS_ENV'] || 'development'

environment rails_env

daemonize true

threads 0,16

bind "unix:///var/www/bugfreak_#{rails_env}/shared/sockets/puma.sock"
pidfile "/var/www/bugfreak_#{rails_env}/shared/sockets/puma.pid"
state_path "/var/www/bugfreak_#{rails_env}/shared/sockets/puma.state"