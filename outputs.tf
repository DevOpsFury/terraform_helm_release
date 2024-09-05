output "release_name" {
  description = "The name of the Helm release."
  value       = helm_release.this.name
}

output "chart_version" {
  description = "The version of the Helm chart deployed."
  value       = helm_release.this.chart_version
}

output "namespace" {
  description = "The Kubernetes namespace where the Helm release is deployed."
  value       = helm_release.this.namespace
}

output "status" {
  description = "The status of the Helm release."
  value       = helm_release.this.status
}

output "url" {
  description = "The URL of the Helm chart repository."
  value       = helm_release.this.repository
}

