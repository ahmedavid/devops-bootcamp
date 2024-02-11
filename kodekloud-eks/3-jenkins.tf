resource "kubectl_manifest" "jenkins" {
  yaml_body  = file("values/jenkins/deployment.yaml")
}