## What are synthetic Tests in Datadog?

Synthetic testing, also known as synthetic monitoring or proactive monitoring, is a way to identify performance issues with key user journeys and application endpoints before they degrade user experience. Companies can leverage synthetic testing to proactively monitor the availability of their services, the response time of their applications, and the functionality of customer transactions. In this guide, we’ll discuss how synthetic tests work, explore some of the most important use cases, and identify essential features to look for when choosing a synthetic testing platform.

## Prerequisite
- Datadog Account
- Slack Account
- Terraform

## Configurating Datadog in terraform 
Configure datadog_app_key and datadog_api_key in variables.tf file

## Configuration of datadog_synthetics_test resources
Configure the parameters in the terraform.tfvars file as per required

## How to Run
- ``` terraform init ```
- ``` terraform fmt ```
- ``` terraform plan ```
- ``` terraform apply --auto-approve ```
- ```terraform destroy --auto-approve ```


## Why Is Synthetic Testing Important?

Quality assurance engineers, developers, site reliability engineers, and WebOps engineers rely on synthetic testing to:

- Proactively identify performance problems

Through synthetic testing, you can continuously monitor whether your services are responding to requests and meeting any conditions that you define, such as response time. You can also ensure that key business transactions are working as expected, and discover and fix performance issues before your end users experience them.

- Reduce mean time to resolution (MTTR)

When a synthetic test fails, an effective synthetic monitoring platform will also provide access to related data, such as backend requests, error logs, and network timings. These correlations give you the context you need for quick troubleshooting.

- Launch in a new market

If you want to launch your product in a new geographic market where you don’t have any real user traffic yet, you can use synthetic testing to validate the product’s expected performance in that location.

- Meet performance goals

Most organizations have service level objectives (SLOs) or other benchmarks that they expect their applications to meet. Synthetic tests allow you to continually monitor whether you’re hitting those goals, where deviations are occurring, and how much of your error budget remains for each SLO.

- Deploy code on a regular basis

Many fast-growing organizations use continuous integration (CI) and continuous delivery (CD) pipelines, which enables them to push many small changes to production on a daily basis. Running synthetic tests within CI/CD pipelines lets these organizations remain agile while minimizing the risk of regressions.

## References

- https://registry.terraform.io/providers/DataDog/datadog/latest/docs/resources/synthetics_test#schema
- https://www.datadoghq.com/knowledge-center/synthetic-testing/

