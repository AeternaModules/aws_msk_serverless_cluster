resource "aws_msk_serverless_cluster" "msk_serverless_clusters" {
  for_each = var.msk_serverless_clusters

  cluster_name = each.value.cluster_name
  region       = each.value.region
  tags         = each.value.tags
  tags_all     = each.value.tags_all

  client_authentication {
    sasl {
      iam {
        enabled = each.value.client_authentication.sasl.iam.enabled
      }
    }
  }

  dynamic "vpc_config" {
    for_each = each.value.vpc_config
    content {
      security_group_ids = vpc_config.value.security_group_ids
      subnet_ids         = vpc_config.value.subnet_ids
    }
  }
}

