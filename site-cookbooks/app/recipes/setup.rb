# create database.generated.yml file
template "/home/vagrant/database.generated.yml" do
  source "database.erb.yml" # replace it on app/config
end