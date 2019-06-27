library identifier: 'jenkins-shared-libs@stable', retriever: modernSCM(
        [$class: 'GitSCMSource',
         remote: 'git@github.com:nchauhan-ee/helloworld-service.git',
         credentialsId: 'gitcreds']) _

buildPushDeploy appName: 'helloworld-service',
                gitProvider: 'github.com',
                appRepo: 'nchauhan-ee',
                isDependencies: false,
                environment: 'dev'
