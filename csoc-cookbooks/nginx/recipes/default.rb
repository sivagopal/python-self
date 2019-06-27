#
# Cookbook:: nginx
# Recipe:: default
#
# Author:: AJ Christensen <aj@junglist.gen.nz>
#
# Copyright:: 2008-2017, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

nginx_cleanup_runit 'cleanup' if node['nginx']['cleanup_runit']

include_recipe "nginx::#{node['nginx']['install_method']}"

node['nginx']['default']['modules'].each do |ngx_module|
  include_recipe "nginx::#{ngx_module}"
end

app_name = "portal_app"
app_home = "/opt/#{app_name}"

directory "#{app_home}/public" do
  recursive true
end

file "#{app_home}/public/index.html" do
  content "<h1>Hello World!</h1>"
end

nginx_site "#{app_name}" do
  template "nginx_#{app_name}.erb"
  variables :app_home => app_home
  action :enable
end
