#!/bin/bash
echo "activando el entorno virtual"

#Verfificar si el entorno virtual ya existe
if [ ! -d "venv" ]; then
    python3 -m venv venv
fi
source venv/bin/activate

echo "instalando las dependencias"
pip install --upgrade pip
pip install -r requirements.txt

echo "creando carpeta de reportes si no existe"
mkdir -p reports

echo "ejecutando las pruebas con pytest"
pytest test/ --junitxml=reports/test-results.xml --html=reports/test-results.html --self-contained-html

echo "pruebas completadas resultados en reports/"