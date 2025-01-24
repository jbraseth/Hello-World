from src.hello_world import main

import pytest


def test_main():
    assert main() is None

