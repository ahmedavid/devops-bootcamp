def buildJar() {
  echo "Building the application..."
  sh 'mvn package'
}

def buildImage() {
  echo "Building the docker image..."
  withCredentials([usernamePassword(
    credentialsId: 'docker-hub-repo',
    passwordVariable: 'PASS',
    usernameVariable: 'USER'
  )]) {
    sh 'docker build -t ahmedavid/demo-app:jma-2.0 -f ./nana-devops-bootcamp/Dockerfile-JMA .'
    sh "echo $PASS | docker login -u $USER --password-stdin"
    sh 'docker push ahmedavid/demo-app:jma-2.0'
  }
}

def deployApp() {
    echo 'deploying the application...'
} 

return this
