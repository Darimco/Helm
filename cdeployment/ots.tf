resource "helm_release" "ots" {
  name       = "ots"
  chart      = "./application"
  wait       = false
}

