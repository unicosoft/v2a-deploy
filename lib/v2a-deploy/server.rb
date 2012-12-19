Capistrano::Configuration.instance(:must_exist).load do
  namespace :deploy do
    desc "touch tmp/restart.txt to trigger a restart"
    task :restart, :roles => :app, :except => { :no_release => true } do
      run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
    end
  end
end
