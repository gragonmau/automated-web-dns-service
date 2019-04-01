#
# Cookbook Name:: apache
# Recipe:: default
#
#

package "vim" do
  action :install
end

package "apache2" do
  action :install
end
  
service "apache2" do
  action [:start]
end
  
  