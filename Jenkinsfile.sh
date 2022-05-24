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
                nexusArtifactUploader artifacts: [[artifactId: '$BUILD_TIMESTAMP', classifier: '', file: 'gameoflife-web/target/gameoflife.war', type: 'war']], credentialsId: '2556a25e-9563-477c-8d39-076bac43ccf8', groupId: 'mahesh', nexusUrl: '18.208.157.81:8081', nexusVersion: 'nexus2', protocol: 'http', repository: 'script', version: '$BUILD_ID'
                deploy adapters: [tomcat8(credentialsId: '5ce0bdcf-c7cc-4028-bdd3-9ad0a7a514e2', path: '', url: 'http://34.235.88.220:9090')], contextPath: null, war: '**/*.war'
                
            }
        }
}
}


