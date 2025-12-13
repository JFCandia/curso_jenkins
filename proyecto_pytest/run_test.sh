#!/bin/bash
echo "activando el entorno virtual"

if [ ! -d "venv" ]; then
    python3 -m venv venv
fi
source venv/bin/activate

echo "instalando las dependencias"
pip install --upgrade pip
pip install -r requisitos.txt

echo "creando carpeta de reportes si no existe"
mkdir -p informes

echo "ejecutando las pruebas con pytest"
pytest prueba/ --junitxml=informes/test-results.xml --html=informes/test-results.html --self-contained-html

echo "pruebas completadas resultados en informes/"
