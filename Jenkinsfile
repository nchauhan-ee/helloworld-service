library identifier: 'hermes-libs@stable', retriever: modernSCM(
        [$class: 'GitSCMSource',
         remote: 'git@github.com:enchanting/hermes-libs.git',
         credentialsId: 'gitcreds']) _

buildPushDeploy appName: 'helloworld-service',
                gitProvider: 'github.com',
                appRepo: 'nchauhan-ee',
                isDependencies: false,
                environment: 'dev'
