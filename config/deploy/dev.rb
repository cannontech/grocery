# Set the deployment directory on the target hosts.
set :deploy_to, "/mnt/sharefs/#{application}-#{stage}" #FIXME

# Use the correct branch on github. Uncomment this if you have set up seperate branches for each staging area
#set :branch, "dev" #FIXME
set :branch, "master" #FIXME

# The hostnames to deploy to.
role :web, "grocery" #FIXME

# Specify one of the web servers to use for database backups or updates.
# This server should also be running Wordpress.
role :db, "grocery", :primary => true #FIXME

# The path to wp-cli
#set :wp, "cd #{current_path}/#{app_root} ; /usr/bin/wp" #FIXME (Should be the full path to the wp command on your server)

# The username on the target system, if different from your local username
#ssh_options[:user] = 'username' #FIXME
