# #!/usr/bin/env bats

@test "terraform version" {
  run bash -c "docker exec container-test terraform --help"
  [[ "${output}" =~ "Usage: terraform" ]]
}

@test "tflint version" {
  run bash -c "docker exec container-test tflint --help"
  [[ "${output}" =~ "tflint --chdir=DI" ]]
}

@test "python3 version" {
  run bash -c "docker exec container-test python --help"
  [[ "${output}" =~ "Options" ]]
}

@test "awscli version" {
  run bash -c "docker exec container-test aws"
  [[ "${output}" =~ "usage: aws" ]]
}

@test "bats version" {
  run bash -c "docker exec container-test bats --help"
  [[ "${output}" =~ "Usage: bats" ]]
}

@test "ruby version" {
  run bash -c "docker exec container-test ruby --help"
  [[ "${output}" =~ "Usage: ruby" ]]
}

@test "awspec version" {
  run bash -c "docker exec container-test awspec help"
  [[ "${output}" =~ "Commands:" ]]
}

@test "trivy version" {
  run bash -c "docker exec container-test trivy --help"
  [[ "${output}" =~ "trivy [command]" ]]
}

@test "checkov version" {
  run bash -c "docker exec container-test checkov --help"
  [[ "${output}" =~ "usage: checkov" ]]
}

@test "snyk version" {
  run bash -c "docker exec container-test snyk --help"
  [[ "${output}" =~ "Snyk CLI scans" ]]
}

@test "circlepipe version" {
  run bash -c "docker exec container-test circlepipe --help"
  [[ "${output}" =~ "circlepipe [command]" ]]
}

@test "cosign version" {
  run bash -c "docker exec container-test cosign --help"
  [[ "${output}" =~ "cosign [command]" ]]
}

@test "kubectl version" {
  run bash -c "docker exec container-test kubectl --help"
  [[ "${output}" =~ "kubectl controls" ]]
}

@test "helm version" {
  run bash -c "docker exec container-test helm --help"
  [[ "${output}" =~ "helm [command]" ]]
}

@test "working directory should not contain files" {
  run sh -c 'ls -A | grep ^'
  [ "$status" -ne 0 ]
}
