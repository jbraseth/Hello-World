import subprocess
import pytest

pytestmark = pytest.mark.unit


@pytest.mark.description("Test sourcing the helpers.sh script")
def test_source_helpers():
    result = subprocess.run(
        ["bash", "-c", "source ci/helpers.sh && get_docker_cmd"],
        capture_output=True,
        text=True,
        check=True
    )
    assert result.returncode == 0
