#
# Copyright 2015 Chef Software, Inc.
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

chef_ingredient 'delivery-cli' do
  channel node['delivery_build']['delivery-cli']['channel']
  version node['delivery_build']['delivery-cli']['version']
  options node['delivery_build']['delivery-cli']['options']
  package_source node['delivery_build']['delivery-cli']['source_url'] if node['delivery_build']['delivery-cli']['source_url']
  action :upgrade if node['delivery_build']['delivery-cli']['version'].eql?(:latest) && node['delivery_build']['delivery-cli']['source_url'].nil?
end
