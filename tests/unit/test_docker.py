import subprocess
import pytest

pytestmark = pytest.mark.unit


@pytest.mark.description("Test running a command in Docker")
def test_run_in_docker():
    result = subprocess.run(
        ["bash", "ci/run_in_docker.sh", "echo 'Hello from Docker'"],
        capture_output=True,
        text=True,
        check=True
    )
    assert "Hello from Docker" in result.stdout
