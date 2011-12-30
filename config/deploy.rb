set :application, "angellist-viz"
set :deploy_to, "/apps/angellisttrends"
set :deploy_via, :copy
set :user, 'www-data'

set :scm, :git
set :repository,  "git@github.com:bocoup/angellist-viz.git"

set :location, "startupdatatrends.com"
set :use_sudo, false

role :web, location                          
role :app, location                          
role :db,  location, :primary => true

set :copy_exclude, [".rvmrc", "**/.git", ".git"]

# Override default tasks which are not relevant to a non-rails app.
namespace :deploy do
  task :migrate do
    puts "    not doing migrate because not a Rails application."
  end
  task :finalize_update do
    puts "    not doing finalize_update because not a Rails application."
  end
  task :start do
    puts "    not doing start because not a Rails application."
  end
  task :stop do 
    puts "    not doing stop because not a Rails application."
  end
  task :restart do
    puts "    not doing restart because not a Rails application."
  end
end