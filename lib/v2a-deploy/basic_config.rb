Capistrano::Configuration.instance(:must_exist).load do
  set :scm, :git
  set :normalize_asset_timestamps, false
  set :rails_env, "production"
  set :branch, "production"
  set :keep_releases, 10

  after 'deploy:restart', 'deploy:cleanup'
end
