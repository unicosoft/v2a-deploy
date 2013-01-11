Capistrano::Configuration.instance(:must_exist).load do
  namespace :deploy do
    namespace :assets do
      task :symlink do ; end
      task :clean_expired do ; end
    end
  end
end
