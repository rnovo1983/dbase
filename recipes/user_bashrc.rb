cookbook_file "/home/ubuntu/.bashrc" do
  source "bashrc"
  owner "ubuntu"
  group "ubuntu"
  only_if { ::File.exists?('/home/ubuntu') }
end

cookbook_file "/home/ubuntu/.bashrc" do
  source "bashrc"
  owner "rnovo"
  group "rnovo"
  only_if { ::File.exists?('/home/rnovo') }
end

cookbook_file "/home/vagrant/.bashrc" do
  source "bashrc"
  owner "vagrant"
  group "vagrant"
  only_if { ::File.exists?('/home/vagrant') }
end

cookbook_file "/root/.bashrc" do
  source "bashrc"
  owner "root"
  group "root"
  only_if { ::File.exists?('/root') }
end

cookbook_file "/etc/skel/.bashrc" do
  source "bashrc"
  owner "root"
  group "root"
  only_if { ::File.exists?('/etc/skel/root') }
end
