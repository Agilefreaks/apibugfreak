def rvm_loaded?
  Gem::Specification::find_all_by_name('capistrano-rvm').any?
end

namespace :puma do
  desc 'Start puma'
  task :start do
    on roles(:app) do
      within release_path do
        execute :bundle, :exec, 'puma --config config/puma.rb'
      end
    end
  end

  task :stop do
    on roles(:app) do
      within shared_path do
        pid_file = "#{shared_path}/sockets/puma.pid"
        socket_file = "#{shared_path}/sockets/puma.sock"

        execute "kill -9 `cat #{pid_file}`"
        execute "rm #{pid_file}"
        execute "rm #{socket_file}"
      end
    end
  end

  task :restart do
    restarted = false

    on roles(:all) do
      within shared_path do
        pid_file = "#{shared_path}/sockets/puma.pid"

        if test("[ -e #{pid_file} ]")
          state_file = "#{shared_path}/sockets/puma.state"
          execute :bundle, :exec, "pumactl --state #{state_file} restart"
        end
      end
    end

    invoke 'puma:start' unless restarted
  end

  after 'deploy:published', 'puma:restart'
end

#namespace :load do
#  task :defaults do
#    invoke 'rvm:hook' unless fetch(:rvm_hooked, false) || !rvm_loaded?
#  end
#end
