#
# Cookbook Name:: apache
# Recipe:: default
#
#


package "vim" do
  action :install
end

package "ruby-full" do
  action :install
end

# DNS
package "bind9" do
  action :install
end

package "bind9-doc" do
  action :install
end

package "dnsutils" do
  action :install
end

service "bind9" do
  action [:start]
end

# MySQL Server
package "mysql-server" do
  action :install
end

# Apache
package "apache2" do
  action :install
end

service "apache2" do
  action [:start]
end

# Nodejs
package "curl" do
  action :install
end

package "software-properties-common" do
  action :install
end

execute "curl" do
  command "curl -sL https://deb.nodesource.com/setup_10.x | sudo bash -"
  action :run
end

package "nodejs" do
  action :install
end

# Handlebars
execute "handlebars" do
  command "sudo npm install --save handlebars"
  action :run
end


