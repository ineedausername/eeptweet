set :application, "eeptweet"
set :repository,  "https://github.com/ineedausername/eeptweet.git"

set :scm, :git
set :user, "exist"
set :deploy_to, "/home/exist/Desktop/test"

default_run_options[:pty] = true

server "localhost", :app, :webb, :db, :primary => true

namespace :deploy do
  task :start do; end
  task :restart, :roles => :app, :except => { :no_release => true} do
      run "#{try_sudo} touch #{File.join(current_path, 'tmp', 'restart.txt')}"
  end
end


#shortcut for below:
#role :web, "your web-server here"                          # Your HTTP server, Apache/etc
#role :app, "your app-server here"                          # This may be the same as your `Web` server
#role :db,  "your primary db-server here", :primary => true # This is where Rails migrations will run
#role :db,  "your slave db-server here"




# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end

