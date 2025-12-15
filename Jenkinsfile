pipeline {
  agent any

  stages {
    stage('Instalar dependencias') {
      steps {
        sh 'pip install -U pytest pytest-html pytest-metadata'
      }
    }

    stage('Ejecutar pruebas con CSS') {
      steps {
        sh '''
          pytest proyecto_pytest/tests \
            --html=proyecto_pytest/reports/test-results.html \
            --self-contained-html \
            --css=proyecto_pytest/reports/custom.css
        '''
      }
    }

    stage('Publicar reporte') {
      steps {
        publishHTML(target: [
          reportDir: 'proyecto_pytest/reports',
          reportFiles: 'test-results.html',
          reportName: 'Reporte de pruebas Pytest',
          keepAll: true,
          alwaysLinkToLastBuild: true,
          allowMissing: false
        ])
      }
    }
  }
}