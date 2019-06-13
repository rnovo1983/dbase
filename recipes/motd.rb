#disable all current default MOTD's daemon scripts
execute 'disable_daemon_scripts' do
  command 'sudo chmod -x /etc/update-motd.d/*'
end

#Create a new script, eg. /etc/update-motd.d/01-custom with the following bash script
cookbook_file "/etc/update-motd.d/01-custom" do
  source "01-custom"
  owner "root"
  group "root"
  only_if { ::File.exists?('/etc/update-motd.d') }
end

#Make this script executable
execute 'granting_execution_permissions' do
  command 'sudo chmod +x /etc/update-motd.d/01-custom'
end
