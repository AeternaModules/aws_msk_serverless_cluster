output "msk_serverless_clusters_id" {
  description = "Map of id values across all msk_serverless_clusters, keyed the same as var.msk_serverless_clusters"
  value       = { for k, v in aws_msk_serverless_cluster.msk_serverless_clusters : k => v.id if v.id != null && length(v.id) > 0 }
}
output "msk_serverless_clusters_arn" {
  description = "Map of arn values across all msk_serverless_clusters, keyed the same as var.msk_serverless_clusters"
  value       = { for k, v in aws_msk_serverless_cluster.msk_serverless_clusters : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "msk_serverless_clusters_bootstrap_brokers_sasl_iam" {
  description = "Map of bootstrap_brokers_sasl_iam values across all msk_serverless_clusters, keyed the same as var.msk_serverless_clusters"
  value       = { for k, v in aws_msk_serverless_cluster.msk_serverless_clusters : k => v.bootstrap_brokers_sasl_iam if v.bootstrap_brokers_sasl_iam != null && length(v.bootstrap_brokers_sasl_iam) > 0 }
}
output "msk_serverless_clusters_client_authentication" {
  description = "Map of client_authentication values across all msk_serverless_clusters, keyed the same as var.msk_serverless_clusters"
  value       = { for k, v in aws_msk_serverless_cluster.msk_serverless_clusters : k => one(v.client_authentication) if v.client_authentication != null && length(v.client_authentication) > 0 }
}
output "msk_serverless_clusters_cluster_name" {
  description = "Map of cluster_name values across all msk_serverless_clusters, keyed the same as var.msk_serverless_clusters"
  value       = { for k, v in aws_msk_serverless_cluster.msk_serverless_clusters : k => v.cluster_name if v.cluster_name != null && length(v.cluster_name) > 0 }
}
output "msk_serverless_clusters_cluster_uuid" {
  description = "Map of cluster_uuid values across all msk_serverless_clusters, keyed the same as var.msk_serverless_clusters"
  value       = { for k, v in aws_msk_serverless_cluster.msk_serverless_clusters : k => v.cluster_uuid if v.cluster_uuid != null && length(v.cluster_uuid) > 0 }
}
output "msk_serverless_clusters_region" {
  description = "Map of region values across all msk_serverless_clusters, keyed the same as var.msk_serverless_clusters"
  value       = { for k, v in aws_msk_serverless_cluster.msk_serverless_clusters : k => v.region if v.region != null && length(v.region) > 0 }
}
output "msk_serverless_clusters_tags" {
  description = "Map of tags values across all msk_serverless_clusters, keyed the same as var.msk_serverless_clusters"
  value       = { for k, v in aws_msk_serverless_cluster.msk_serverless_clusters : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "msk_serverless_clusters_tags_all" {
  description = "Map of tags_all values across all msk_serverless_clusters, keyed the same as var.msk_serverless_clusters"
  value       = { for k, v in aws_msk_serverless_cluster.msk_serverless_clusters : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}
output "msk_serverless_clusters_vpc_config" {
  description = "Map of vpc_config values across all msk_serverless_clusters, keyed the same as var.msk_serverless_clusters"
  value       = { for k, v in aws_msk_serverless_cluster.msk_serverless_clusters : k => v.vpc_config if v.vpc_config != null && length(v.vpc_config) > 0 }
}

