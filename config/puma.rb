rails_env = ENV['RAILS_ENV'] || 'development'

environment rails_env

daemonize false

threads 2,16

bind "unix:///var/www/bugfreak_#{rails_env}/shared/sockets/puma.sock"
pidfile "/var/www/bugfreak_#{rails_env}/shared/sockets/puma.pid"
state_path "/var/www/bugfreak_#{rails_env}/shared/sockets/puma.state"

stdout_redirect "/var/www/bugfreak_#{rails_env}/shared/log/puma_stdout.log", "/var/www/bugfreak_#{rails_env}/shared/log/puma_stderr.log", true

activate_control_app "unix:///var/www/bugfreak_#{rails_env}/shared/sockets/pumactl.sock"
activate_control_app