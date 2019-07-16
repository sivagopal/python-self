pipeline {
  agent any 
  stages {
    stage('build') {
      steps {
        sh '/usr/bin/pip install --user -r requirements.txt'
      }
    }
    stage('deploy') {
       sh 'chef-solo -c ${HOME}/chef-repo/solo.rb -j ${HOME}/chef-repo/portal-setup.json --log-level debug > logFile'
    }
  }
}
