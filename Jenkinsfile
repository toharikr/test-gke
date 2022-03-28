node {
    def app
    def name
    stage('Clone repository') {
        /* Let's make sure we have the repository cloned to our workspace */

        checkout scm
    }

    stage('Build image') {
        /* This builds the actual image; synonymous to
         * docker build on the command line */
        app = docker.build("us.gcr.io/keen-goods-345119/test5")
    }
    stage('Push Image') {
        docker.withRegistry('https://us.gcr.io', 'gcr:keen-goods-345119') {
        APP = "1.5.0"
        app.push("${APP}")
        //app.push("latest")
        }
}

}
