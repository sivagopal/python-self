#
# Copyright 2015-2016, Noah Kantrowitz
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Default inversion options.
default['poise-python']['provider'] = 'auto'
default['poise-python']['options'] = {}

# Used for the default recipe.
default['poise-python']['install_python2'] = true
default['poise-python']['install_python3'] = false
default['poise-python']['install_pypy'] = false
override['poise-python']['options']['pip_version'] = "8.1.2"
