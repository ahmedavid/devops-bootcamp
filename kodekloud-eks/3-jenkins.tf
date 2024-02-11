resource "kubectl_manifest" "jenkins_deployment" {
  yaml_body  = file("values/jenkins/deployment.yaml")
}

resource "kubectl_manifest" "jenkins_service" {
  yaml_body  = file("values/jenkins/service.yaml")
}

resource "kubectl_manifest" "jenkins_ingress" {
  yaml_body  = file("values/jenkins/ingress.yaml")
}

resource "kubectl_manifest" "jenkins_sc" {
  yaml_body  = file("values/jenkins/sc.yaml")
}

resource "kubectl_manifest" "jenkins_sa" {
  yaml_body  = file("values/jenkins/sa.yaml")
}

resource "kubectl_manifest" "jenkins_role" {
  yaml_body  = file("values/jenkins/role.yaml")
}

resource "kubectl_manifest" "jenkins_role-binding" {
  yaml_body  = file("values/jenkins/role-binding.yaml")
}
