rails_env = ENV['RAILS_ENV'] || 'development'

environment rails_env

daemonize true

threads 2,16

bind 'unix:///var/www/bugfreak/shared/sockets/puma.sock'
pidfile '/var/www/bugfreak/shared/sockets/puma.pid'
state_path '/var/www/bugfreak/shared/sockets/puma.state'

stdout_redirect '/var/www/bugfreak/shared/log/pumaout.log', 'var/www/bugfreak/shared/log/pumaerr.log', true

activate_control_app 'unix:///var/www/bugfreak/shared/sockets/pumactl.sock'
activate_control_app