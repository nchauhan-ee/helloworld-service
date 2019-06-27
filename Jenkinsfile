try {
    node('master') {
        try {
            stage('Checkout repo') {
                echo 'Check out repo...'
                checkout scm
                echo 'repo cloned'
            }

            stage('Build image') {
                echo 'running build.sh'
                sh "./build.sh"
                echo "Build image & push now...."
            }
        } catch (err) {
            throw err
        }

    }   
} catch (err) {
    throw err
}