pipeline {
  agent any 
  stages {
    stage('check chef-client exists') {
      steps {
	def chefclientExists = fileExists '/usr/bin/chef-client'
        if (chefclientExists) {
           echo 'chef client exists proceeding'
        }
        else {
          error 'no chef exists in box'
        }
      }
    }
    stage('build') {
      steps {
        sh '/usr/bin/pip install --user -r requirements.txt'
      }
    }
    stage('deploy') {
      steps {
        sh 'sudo chef-solo -c ${HOME}/chef-repo/solo.rb -j ${HOME}/chef-repo/portal-setup.json --log-level debug > logFile'
      }
    }
  }
}
