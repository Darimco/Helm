resource "helm_release" "helm_deployment" {
  name       = var.deployment_name
  namespace  = var.deployment_namespace
  chart      = var.chart
  repository = var.repository
  version    = var.chart_version
  wait       = false

  values = [
    "${var.values_yaml}"
  ]
}