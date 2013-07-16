#
# Cookbook Name:: devenv
# Recipe:: default
#
# Copyright (C) 2013 Rapid7
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe 'editor'
include_recipe 'git'
include_recipe 'homebrew'
include_recipe 'rvm'
include_recipe 'vagrant'

# TODO: Handle in attributes file?
node.set[:rvm][:user_installs] = [{
  :user => node[:current_user],
  :default_ruby => '1.9.3',
  :rubies => %w[1.9.3 2.0.0]
}]

%w[bash-completion tmux].each(&method(:package))
