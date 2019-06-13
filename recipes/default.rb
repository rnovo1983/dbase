#
# Cookbook:: dbase
# Recipe:: default
#
# Copyright:: 2019, The Authors, All Rights Reserved.
apt_update 'update'

node['dbase']['packages_name'].each do |p|
     package p do
     action :install
   end
end

include_recipe "dbase::timezone"
include_recipe "dbase::user_bashrc"
include_recipe "dbase::motd"
