resource "helm_release" "ingress-nginx" {
  name             = "ingress-nginx"
  namespace        = "ingress-nginx"
  repository       = "https://kubernetes.github.io/ingress-nginx"
  chart            = "ingress-nginx"
  create_namespace = true

  # set {
  #   name  = "controller.service.annotations.metallb.universe.tf/loadBalancerIPs"
  #   value = "84.54.23.171"
  # }
}