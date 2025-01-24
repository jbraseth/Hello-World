import pytest

from src.hello_world import main

pytestmark = pytest.mark.hello_world


@pytest.mark.description("main program execution should return should be void")
def test_main():
    assert main() is None
