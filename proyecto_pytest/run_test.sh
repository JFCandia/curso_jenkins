#!/bin/bash
echo "ingresando al proyecto pytest"
cd proyecto_pytest
echo "activando el entorno virtual"
source venv/bin/activate

echo "instalando las dependencias"
pip install -r requirements.txt

echo "ejecutando las pruebas con pytest"
pytest test/ --junitxml=reports/test-results.xml --html=reports/test-results.html --self-contained-html

echo "pruebas completadas resultados en reports/"