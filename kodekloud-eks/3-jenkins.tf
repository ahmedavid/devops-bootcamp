resource "kubectl_manifest" "jenkins_deployment" {
  yaml_body  = file("values/jenkins/deployment.yaml")
}

resource "kubectl_manifest" "jenkins_service" {
  yaml_body  = file("values/jenkins/service.yaml")
}

resource "kubectl_manifest" "jenkins_ingress" {
  yaml_body  = file("values/jenkins/ingress.yaml")
}
