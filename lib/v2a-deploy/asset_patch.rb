Capistrano::Configuration.instance(:must_exist).load do
  namespace :deploy do
    namespace :assets do
      task :symlink do ; end

      task :precompile, :roles => assets_role, :except => { :no_release => true } do
        run <<-CMD.compact
          cd -- #{latest_release.shellescape} &&
          #{rake} RAILS_ENV=#{rails_env.shellescape} #{asset_env} assets:precompile
        CMD
      end

      task :update_asset_mtimes do ; end
      task :clean_expired do ; end
      task :rollback do ; end
    end
  end
end
