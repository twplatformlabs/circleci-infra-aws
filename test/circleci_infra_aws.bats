# #!/usr/bin/env bats

setup() {
  if [[ -z "${TEST_CONTAINER}" ]]; then
    echo "ERROR: TEST_CONTAINER environment variable is not set"
    echo "Example:"
    echo "  TEST_CONTAINER=my-container bats tests.bats"
    exit 1
  fi
}

@test "terraform available" {
  run bash -c "docker exec ${TEST_CONTAINER} terraform --help"
  [[ "${output}" =~ "Usage: terraform" ]]
}

@test "tflint available" {
  run bash -c "docker exec ${TEST_CONTAINER} tflint --help"
  [[ "${output}" =~ "tflint --chdir=DI" ]]
}

@test "python3 available" {
  run bash -c "docker exec ${TEST_CONTAINER} python --help"
  [[ "${output}" =~ "Options" ]]
}

@test "awscli available" {
  run bash -c "docker exec ${TEST_CONTAINER} aws"
  [[ "${output}" =~ "usage: aws" ]]
}

@test "bats available" {
  run bash -c "docker exec ${TEST_CONTAINER} bats --help"
  [[ "${output}" =~ "Usage: bats" ]]
}

@test "ruby available" {
  run bash -c "docker exec ${TEST_CONTAINER} ruby --help"
  [[ "${output}" =~ "Usage: ruby" ]]
}

@test "awspec available" {
  run bash -c "docker exec ${TEST_CONTAINER} gem list | grep awspec"
  [[ "${output}" =~ "awspec" ]]
}

@test "trivy available" {
  run bash -c "docker exec ${TEST_CONTAINER} trivy --help"
  [[ "${output}" =~ "trivy [command]" ]]
}

@test "checkov available" {
  run bash -c "docker exec ${TEST_CONTAINER} checkov --help"
  [[ "${output}" =~ "usage: checkov" ]]
}

@test "snyk available" {
  run bash -c "docker exec ${TEST_CONTAINER} snyk --help"
  [[ "${output}" =~ "Snyk CLI scans" ]]
}

@test "circlepipe available" {
  run bash -c "docker exec ${TEST_CONTAINER} circlepipe --help"
  [[ "${output}" =~ "circlepipe [command]" ]]
}

@test "cosign available" {
  run bash -c "docker exec ${TEST_CONTAINER} cosign --help"
  [[ "${output}" =~ "cosign [command]" ]]
}

@test "kubectl available" {
  run bash -c "docker exec ${TEST_CONTAINER} kubectl --help"
  [[ "${output}" =~ "kubectl controls" ]]
}

@test "helm available" {
  run bash -c "docker exec ${TEST_CONTAINER} helm --help"
  [[ "${output}" =~ "helm [command]" ]]
}

@test "tofu available" {
  run bash -c "docker exec ${TEST_CONTAINER} tofu --help"
  [[ "${output}" =~ "Main commands:" ]]
}
