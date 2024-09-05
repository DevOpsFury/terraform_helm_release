provider "helm" {
  # Ensure the Helm provider is configured as needed
}

resource "helm_release" "this" {
  name       = var.name
  repository = var.repository
  chart      = var.chart
  version    = var.version
  namespace  = var.namespace

  # Define values from the custom values file and map
  values = [
    var.custom_values_file != "" ? file(var.custom_values_file) : null,
    var.custom_values_map != {} ? yamlencode(var.custom_values_map) : null
  ]

  # Default values
  timeout                = var.timeout
  recreate_pods          = var.recreate_pods
  disable_webhooks       = var.disable_webhooks
  wait                   = var.wait
  atomic                 = var.atomic
  cleanup_on_fail        = var.cleanup_on_fail
  chart_version          = var.chart_version
  create_namespace       = var.create_namespace
  values_files           = var.values_files
  verify                 = var.verify
  dependency_update      = var.dependency_update

  # Optional: Add other Helm provider options as needed
}

