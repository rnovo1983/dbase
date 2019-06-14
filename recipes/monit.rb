#Loads monit configuration file.
cookbook_file "/etc/monit/monitrc" do
  source "monitrc"
  owner "root"
  group "root"
  mode '600'
  only_if { ::File.exists?('/etc/monit/monitrc') }
end

service 'monit' do
    action [:restart, :enable]
end
