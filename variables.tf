variable "msk_serverless_clusters" {
  description = <<EOT
Map of msk_serverless_clusters, attributes below
Required:
    - cluster_name
    - client_authentication (block):
        - sasl (required, block):
            - iam (required, block):
                - enabled (required)
    - vpc_config (block):
        - security_group_ids (optional)
        - subnet_ids (required)
Optional:
    - region
    - tags
    - tags_all
EOT

  type = map(object({
    cluster_name = string
    region       = optional(string)
    tags         = optional(map(string))
    tags_all     = optional(map(string))
    client_authentication = object({
      sasl = object({
        iam = object({
          enabled = bool
        })
      })
    })
    vpc_config = list(object({
      security_group_ids = optional(set(string))
      subnet_ids         = set(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.msk_serverless_clusters : (
        length(v.vpc_config) >= 1
      )
    ])
    error_message = "Each vpc_config list must contain at least 1 items"
  }
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

