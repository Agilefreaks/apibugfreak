namespace :puma do
  desc 'Start puma'
  task :start do
    on roles(:app) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :bundle, :exec, 'puma --config config/puma.rb'
        end
      end
    end
  end

  task :stop do
    on roles(:app) do
      within shared_path do
        with rails_env: fetch(:rails_env) do
          pid_file = "#{shared_path}/sockets/puma.pid"
          socket_file = "#{shared_path}/sockets/puma.sock"

          execute "kill -9 `cat #{pid_file}`"
          execute "rm #{pid_file}"
          execute "rm #{socket_file}"
        end
      end
    end
  end

  after 'deploy:published', 'puma:start'
end

