// file: variables.tf
//
// Copyright 2016 Datawire. All rights reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//

variable "environment_type" {
  description = "identifies the type of runtime environment, for example, 'dev' or 'prod'."
}

variable "service_name" {
  description = "the name of the service, for example, 'discovery', 'identity', 'juggernaut'."
}

variable "service_namespace" {
  description = "the namespace of the service, for example, 'plombardi'."
}

variable "pagerduty_endpoint" {
  description = "the PagerDuty HTTPS endpoint where SNS notifications will be routed."
}
