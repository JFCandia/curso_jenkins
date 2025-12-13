import pytest

def suma(a, b):
    """Función que suma dos números."""
    return a + b

def test_suma():
    assert suma(2, 3) == 5
    assert suma(-1, 1) == 0
    assert suma(0, 0) == 0
    assert suma(-2, -3) == -5
    
def test_suma_fallo():
    assert suma(2, 2) == 5  # Este test está diseñado para fallar    