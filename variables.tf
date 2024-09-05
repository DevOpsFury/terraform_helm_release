variable "name" {
  description = "The name of the Helm release."
  type        = string
}

variable "repository" {
  description = "The repository URL of the Helm chart."
  type        = string
  default     = "https://charts.example.com"
}

variable "chart" {
  description = "The name of the Helm chart."
  type        = string
}

variable "version" {
  description = "The version of the Helm chart."
  type        = string
  default     = "latest"
}

variable "namespace" {
  description = "The Kubernetes namespace to install the release into."
  type        = string
  default     = "default"
}

variable "custom_values_file" {
  description = "Path to the custom values YAML file."
  type        = string
  default     = ""
}

variable "custom_values_map" {
  description = "Custom values in map format to override default values."
  type        = map(any)
  default     = {}
}

variable "timeout" {
  description = "Time to wait for Helm operations to complete."
  type        = string
  default     = "300s"
}

variable "recreate_pods" {
  description = "If true, recreate pods after a successful upgrade."
  type        = bool
  default     = false
}

variable "disable_webhooks" {
  description = "If true, disable webhooks during upgrade."
  type        = bool
  default     = false
}

variable "wait" {
  description = "If true, wait for resources to be ready before marking the release as successful."
  type        = bool
  default     = true
}

variable "atomic" {
  description = "If true, roll back changes on failure."
  type        = bool
  default     = false
}

variable "cleanup_on_fail" {
  description = "If true, delete newly created resources if the release fails."
  type        = bool
  default     = true
}

variable "chart_version" {
  description = "Version of the Helm chart."
  type        = string
  default     = ""
}

variable "create_namespace" {
  description = "If true, create the namespace if it does not exist."
  type        = bool
  default     = false
}

variable "values_files" {
  description = "List of paths to YAML files with values."
  type        = list(string)
  default     = []
}

variable "verify" {
  description = "If true, verify the chart after downloading."
  type        = bool
  default     = false
}

variable "dependency_update" {
  description = "If true, run 'helm dependency update' before installing."
  type        = bool
  default     = false
}

