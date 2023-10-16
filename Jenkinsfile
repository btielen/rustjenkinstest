node {
    checkout scm

    def customImage = docker.build("my-image:${env.BUILD_ID}")

    docker.image("my-image:${env.BUILD_ID}").withRun('-p 3000:3000') {
        sh 'echo image started'
        input message: 'Finished using the web site? (Click "Proceed" to continue)'
    }
}
