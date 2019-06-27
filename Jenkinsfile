node {
    try {

        stage('Checkout repo') {
            git url: "git@github.com:nchauhan-ee/helloworld-service.git", branch: "master"
        }

        stage('Build image') {
            sh "./build.sh"
            echo "Build image & push now...."
        }

    }catch (err) {
        throw err
    }
}