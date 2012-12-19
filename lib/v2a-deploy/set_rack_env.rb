Capistrano::Configuration.instance(:must_exist).load do
  namespace :deploy do
    desc "set ENV[RAILS_ENV] and ENV[RAILS_ENV] to 'rails_env' in config.ru"
    task :set_rack_env do
      run "cd #{latest_release} && echo 'ENV[\"RAILS_ENV\"] = ENV[\"RACK_ENV\"] = \"#{rails_env}\"' | cat - config.ru > config.tmp && mv config.tmp config.ru"
    end
  end

  after "deploy:update_code", "deploy:set_rack_env"
end
