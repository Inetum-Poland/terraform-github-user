# Preconfigured Terraform module for `github_user`.

[![pre_commit](https://github.com/Inetum-Poland/tf-module-github-user/actions/workflows/pre_commit.yml/badge.svg)](https://github.com/Inetum-Poland/tf-module-github-user/actions/workflows/pre_commit.yml) [![trufflehog](https://github.com/Inetum-Poland/tf-module-github-user/actions/workflows/trufflehog.yaml/badge.svg)](https://github.com/Inetum-Poland/tf-module-github-user/actions/workflows/trufflehog.yaml)

This module creates a preconfigured GitHub user.

> [!IMPORTANT]
> __This repository uses the [Conventional Commits](https://www.conventionalcommits.org/).__
>
> For more information please see the [Conventional Commits documentation](https://www.conventionalcommits.org/en/v1.0.0/#summary).

> [!IMPORTANT]
> __This repository uses the [pre-commit](https://pre-commit.com/).__
>
> Please be respectful while contributing and after cloning this repo install the pre-commit hooks.
> ```bash
> > pre-commit install --install-hooks -t pre-commit -t commit-msg
> ```
> For more information please see the [pre-commit documentation](https://pre-commit.com/).

<!-- BEGIN_AUTOMATED_TF_DOCS_BLOCK -->
## Providers

| Name | Version |
|------|---------|
| <a name="provider_github"></a> [github](#provider\_github) | 6.2.1 |
| <a name="provider_terraform"></a> [terraform](#provider\_terraform) | n/a |

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_github"></a> [github](#requirement\_github) | ~> 6.0 |

## Resources

| Name | Type |
|------|------|
| [github_membership.user](https://registry.terraform.io/providers/integrations/github/latest/docs/resources/membership) | resource |
| [terraform_data.seat_project_code](https://registry.terraform.io/providers/hashicorp/terraform/latest/docs/resources/data) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_role"></a> [role](#input\_role) | The role of the user | `string` | `"member"` | no |
| <a name="input_seat_project_code"></a> [seat\_project\_code](#input\_seat\_project\_code) | The seat project code | `string` | n/a | yes |
| <a name="input_teams"></a> [teams](#input\_teams) | The teams to add the user to | <pre>list(object({<br>    team = any<br>    role = string<br>  }))</pre> | `[]` | no |
| <a name="input_username"></a> [username](#input\_username) | The username of the user | `string` | n/a | yes |

## Modules

No modules.

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_out"></a> [out](#output\_out) | User object `github_membership`. |
<!-- END_AUTOMATED_TF_DOCS_BLOCK -->

## Contributions

This module is created by Inetum Poland. Feel free to contribute to it.
