#!/bin/bash
echo "activando el entorno virtual"

# Crear venv si no existe
if [ ! -d "venv" ]; then
    python3 -m venv venv
fi

# Activar venv
source venv/bin/activate

echo "instalando las dependencias"
pip install --upgrade pip
pip install -r requirements.txt

echo "ejecutando las pruebas con pytest"
pytest test/ --junitxml=reports/test-results.xml --html=reports/test-results.html --self-contained-html

echo "pruebas completadas resultados en reports/"
