rails_env = 'staging'

environment rails_env

daemonize true

threads 0,8

workers 1

pidfile "/var/www/bugfreak_#{rails_env}/shared/sockets/puma.pid"
state_path "/var/www/bugfreak_#{rails_env}/shared/sockets/puma.state"

stdout_redirect "/var/www/bugfreak_#{rails_env}/shared/log/puma_stdout.log", "/var/www/bugfreak_#{rails_env}/shared/log/puma_stderr.log"

bind 'tcp://0.0.0.0:9292'

activate_control_app "unix:///var/www/bugfreak_#{rails_env}/shared/sockets/pumactl.sock", { no_token: true }
