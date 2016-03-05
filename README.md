# Terraform SNS-PagerDuty Integration Module

Provides an Amazon SNS topic that [PagerDuty](https://www.pagerduty.com) can publish notifications about service alarms into. PagerDuty will automatically subscribe to the topic and receive notifications after this role runs.

# Variables

|    Name            | Purpose                                                                                                               |
|--------------------|-----------------------------------------------------------------------------------------------------------------------|
| service_fqn        | A service's fully qualified name. In Datawire-land we generally use a format like <Environment>-<Label>-<Service-Id>. |
| pagerduty_endpoint | The HTTPS endpoint created by PagerDuty after configuring a service.                                                  |

# What this role Does

1. Creates an Amazon SNS topic.
2. Creates an Amazon SNS topic subscription for PagerDuty. PagerDuty will automatically confirm the subscription.

# Outputs

|    Name                          | Purpose                                                               |
|----------------------------------|-----------------------------------------------------------------------|
| pagerduty_topic_arn              | The ARN associated with the created PagerDuty service.                |                                             
| pagerduty_subscription_arn       | The ARN of the PagerDuty subscription.                                |
| pagerduty_subscription_endpoint  | The HTTPS endpoint associated with subscription.                      |
| pagerduty_subscription_protocol  | The protocol used by the subscription.                                |
| pagerduty_subscription_topic_arn | The ARN of the SNS topic associated with this subscription (should be the same as `pagerduty_topic_arn |

# License

The project is open-source software licensed under **Apache 2.0**. Please see [LICENSE](LICENSE) for further details.