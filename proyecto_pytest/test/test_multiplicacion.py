import pytest

def multiplicar(a, b):
    """Función que multiplica dos números."""
    return a * b    
def test_multiplicar():
    assert multiplicar(2, 3) == 6
    assert multiplicar(-1, 1) == -1
    assert multiplicar(0, 5) == 0
    assert multiplicar(-2, -3) == 6