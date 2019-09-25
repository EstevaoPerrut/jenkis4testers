pipeline {
    agent {
        docker{
            image "ruby"
            args "--network=skynet"
        }
    }
    stages {
        stage("Build") {
            steps {
                sh "bundle install"
            }
        }
        stage("Tests") {
            steps {
                sh "bundle exec cucumber -p ci"
            }
        }
    }
}
