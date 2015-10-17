include_recipe "rbenv"
include_recipe "rbenv::ruby_build"
include_recipe "rbenv::rbenv_vars"

rbenv_ruby "2.2.3" do
  global true
end
rbenv_gem "bundler"