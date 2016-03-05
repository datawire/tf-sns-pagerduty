// file: main.tf
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

resource "aws_sns_topic" "pagerduty" {
  name = "${var.service_fqn}-pagerduty"
  display_name = "${var.service_fqn}"
}

resource "aws_sns_topic_subscription" "pagerduty" {
  endpoint = "${var.pagerduty_endpoint}"
  endpoint_auto_confirms = true
  protocol = "https"
  topic_arn = "${aws_sns_topic.pagerduty.arn}"
}