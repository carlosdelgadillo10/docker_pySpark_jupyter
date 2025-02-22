pipeline {
    agent any
    environment {
        SPARK_MASTER_URL = 'spark://spark-master:7077'
    }
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        stage('Build and Test') {
            steps {
                script {
                    // Aquí puedes compilar o crear tu artefacto, por ejemplo, un archivo .jar
                    sh 'mvn clean install'  // Si estás usando Maven
                    sh 'pytest'  // Si estás ejecutando pruebas Python
                }
            }
        }
        stage('Run Spark Tests') {
            steps {
                script {
                    // Aquí puedes ejecutar las pruebas de Spark en tu clúster
                    sh """
                    spark-submit \
                        --master ${SPARK_MASTER_URL} \
                        --class com.example.SparkTest \
                        /path/to/your/spark-application.jar
                    """
                }
            }
        }
        stage('Deploy to Staging') {
            steps {
                script {
                    // Despliegue a staging, Docker, Kubernetes o lo que sea necesario
                    sh 'docker-compose up -d'
                }
            }
        }
    }
    post {
        success {
            // Notificaciones de éxito, puedes enviar un mensaje a Slack, por ejemplo.
            slackSend(channel: '#ci-cd', message: "Build and tests passed!")
        }
        failure {
            // Notificaciones de error
            slackSend(channel: '#ci-cd', message: "Build or tests failed!")
        }
    }
}
