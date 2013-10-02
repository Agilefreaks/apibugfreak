rails_env = ENV['RAILS_ENV'] || 'development'

threads 2,16

bind 'unix:///var/www/bugfreak/shared/sockets/puma.sock'
pidfile '/var/www/bugfreak/shared/sockets/puma.pid'
state_path '/var/www/bugfreak/shared/sockets/puma.state'

activate_control_app