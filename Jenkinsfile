pipeline {
  agent any 
  stages {
    stage('build') {
      steps {
        sh '/usr/bin/pip install --user -r requirements.txt'
      }
    }
    stage('deploy') {
      steps {
        sh 'cp -r /var/lib/jenkins/workspace/python-self ${HOME}/chef-repo'
      }
    }
  }
}
