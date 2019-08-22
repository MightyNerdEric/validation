##############################################################################
# Copyright (c) 2019 AT&T Intellectual Property.                             #
# Copyright (c) 2019 Nokia.                                                  #
#                                                                            #
# Licensed under the Apache License, Version 2.0 (the "License");            #
# you maynot use this file except in compliance with the License.            #
#                                                                            #
# You may obtain a copy of the License at                                    #
#       http://www.apache.org/licenses/LICENSE-2.0                           #
#                                                                            #
# Unless required by applicable law or agreed to in writing, software        #
# distributed under the License is distributed on an "AS IS" BASIS, WITHOUT  #
# WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.           #
# See the License for the specific language governing permissions and        #
# limitations under the License.                                             #
##############################################################################


*** Settings ***
Documentation     Tests to validate Helm charts available in chart
...               repositories.
Resource          helm_chart.resource
Suite Setup       Run Keywords  Open Connection And Log In
                  ...           List Charts In Repositories
                  ...           Start Local Chart Repository Server
Suite Teardown    Run Keywords  Stop Local Chart Repository Server
                  ...           Close All Connections


*** Test Cases ***
Validate Formatting
    Fetch Charts
    Lint Charts

Validate Rendering
    Simulate Install
