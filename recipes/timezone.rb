#save the new timezone
execute 'save_new_timezone' do
  command "echo #{node['dbase']['timezone']} | sudo tee /etc/timezone"
end

bash 'change_timezone' do
  cwd '/home'
  code <<-EOH
  export DEBIAN_FRONTEND=noninteractive
  dpkg-reconfigure --frontend noninteractive tzdata
    EOH
end
