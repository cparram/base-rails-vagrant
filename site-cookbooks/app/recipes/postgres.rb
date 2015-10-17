include_recipe "postgresql::client"
include_recipe "postgresql::server"

# create new postgres user
execute "create new postgres user" do
  user "postgres"
  command "psql -c \"create user #{node['db']['user']['name']} with password '#{node['db']['user']['password']}' createdb;\""
  not_if { `sudo -u postgres psql -tAc \"SELECT * FROM pg_roles WHERE rolname='#{node['db']['user']['name']}'\" | wc -l`.chomp == "1" }
end