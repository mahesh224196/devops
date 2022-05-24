pipeline {
    agent any
    tools {
       maven "Maven"
    }
    stages {
        stage('Build') {
            steps {
                git 'https://github.com/wakaleo/game-of-life.git'
                sh "mvn -Dmaven.test.failure.ignore=true clean install"
            }
        }
}
}

