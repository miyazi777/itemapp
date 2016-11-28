lock '3.6.1'

set :application, 'itemapp'
set :repo_url, 'git@github.com:miyazi777/item-app.git'
set :branch, 'master'
set :deploy_to, '/home/ec2-user/itemapp'
set :scm, :git

set :format, :pretty
set :log_level, :debug
set :keep_releases, 3

set :rbenv_type, :system
set :rbenv_ruby, '2.3.1'

# config valid only for current version of Capistrano
#lock '3.6.1'
#
#set :application, 'item_app'
#set :repo_url, 'git@github.com:miyazi777/item-app.git'
#set :branch, 'master'
#set :deploy_to, '/var/www/item_app'
#set :scm, :git
#set :linked_dirs, %w{bin log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system public/assets}
#set :keep_release, 5



# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, 'config/database.yml', 'config/secrets.yml'

# Default value for linked_dirs is []
# append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5
