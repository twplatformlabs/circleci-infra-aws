# #!/usr/bin/env bats

setup() {
  if [[ -z "${TEST_CONTAINER}" ]]; then
    echo "ERROR: TEST_CONTAINER environment variable is not set"
    echo "Example:"
    echo "  TEST_CONTAINER=my-container bats tests.bats"
    exit 1
  fi
}

@test "terraform version" {
  run bash -c "docker exec ${TEST_CONTAINER} terraform --help"
  [[ "${output}" =~ "Usage: terraform" ]]
}

@test "tflint version" {
  run bash -c "docker exec ${TEST_CONTAINER} tflint --help"
  [[ "${output}" =~ "tflint --chdir=DI" ]]
}

@test "python3 version" {
  run bash -c "docker exec ${TEST_CONTAINER} python --help"
  [[ "${output}" =~ "Options" ]]
}

@test "awscli version" {
  run bash -c "docker exec ${TEST_CONTAINER} aws"
  [[ "${output}" =~ "usage: aws" ]]
}

@test "bats version" {
  run bash -c "docker exec ${TEST_CONTAINER} bats --help"
  [[ "${output}" =~ "Usage: bats" ]]
}

@test "ruby version" {
  run bash -c "docker exec ${TEST_CONTAINER} ruby --help"
  [[ "${output}" =~ "Usage: ruby" ]]
}

@test "awspec version" {
  run bash -c "docker exec ${TEST_CONTAINER} gem list | grep awspec"
  [[ "${output}" =~ "awspec" ]]
}

@test "trivy version" {
  run bash -c "docker exec ${TEST_CONTAINER} trivy --help"
  [[ "${output}" =~ "trivy [command]" ]]
}

@test "checkov version" {
  run bash -c "docker exec ${TEST_CONTAINER} checkov --help"
  [[ "${output}" =~ "usage: checkov" ]]
}

@test "snyk version" {
  run bash -c "docker exec ${TEST_CONTAINER} snyk --help"
  [[ "${output}" =~ "Snyk CLI scans" ]]
}

@test "circlepipe version" {
  run bash -c "docker exec ${TEST_CONTAINER} circlepipe --help"
  [[ "${output}" =~ "circlepipe [command]" ]]
}

@test "cosign version" {
  run bash -c "docker exec ${TEST_CONTAINER} cosign --help"
  [[ "${output}" =~ "cosign [command]" ]]
}

@test "kubectl version" {
  run bash -c "docker exec ${TEST_CONTAINER} kubectl --help"
  [[ "${output}" =~ "kubectl controls" ]]
}

@test "helm version" {
  run bash -c "docker exec ${TEST_CONTAINER} helm --help"
  [[ "${output}" =~ "helm [command]" ]]
}
