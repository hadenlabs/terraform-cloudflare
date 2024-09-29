<!-- markdown-link-check-disable -->
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 1.0.0 |
| cloudflare | >=3.4.0 |
| null | >= 2.0 |

## Providers

| Name | Version |
|------|---------|
| cloudflare | >=3.4.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [cloudflare_record.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/resources/record) | resource |
| [cloudflare_zone.this](https://registry.terraform.io/providers/cloudflare/cloudflare/latest/docs/data-sources/zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| module\_enabled | (Optional) Whether to create resources within the module or not. Default is true. | `bool` | `true` | no |
| name | The name of the record | `string` | n/a | yes |
| proxied | (Optional) Implement proxied for record. Default is false | `bool` | `false` | no |
| ttl | The TTL of the record (automatic: '1') | `number` | `3600` | no |
| type | The type of the record | `string` | `"A"` | no |
| value | The (string) value of the record. Either this or data must be specified | `string` | n/a | yes |
| zone | name of zone e.g. 'domain.dev' or 'domain.com' | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| created\_on | The RFC3339 timestamp of when the record was created. |
| hostname | The FQDN of the record. |
| id | id of record. |
| metadata | A key-value map of string metadata Cloudflare associates with the record. |
| modified\_on | The RFC3339 timestamp of when the record was last modified. |
| module\_enabled | Whether the module is enabled. |
| proxiable | Shows whether this record can be proxied, must be true if setting proxied=true. |
<!-- END_TF_DOCS -->
<!-- markdown-link-check-enable -->