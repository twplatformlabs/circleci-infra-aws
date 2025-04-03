#!/usr/bin/env bats

@test "terraform version" {
  run bash -c "docker exec circleci-infra-aws-ubuntu-edge terraform version"
  [[ "${output}" =~ "1.9" ]]
}

@test "tflint version" {
  run bash -c "docker exec circleci-infra-aws-ubuntu-edge tflint --version"
  [[ "${output}" =~ "0.56" ]]
}

@test "python3 version" {
  run bash -c "docker exec circleci-infra-aws-ubuntu-edge python -V"
  [[ "${output}" =~ "3.12" ]]
}

@test "awscli version" {
  run bash -c "docker exec circleci-infra-aws-ubuntu-edge aws --version"
  [[ "${output}" =~ "1.36" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-infra-aws-ubuntu-edge bats -v"
  [[ "${output}" =~ "1.11" ]]
}

@test "ruby version" {
  run bash -c "docker exec circleci-infra-aws-ubuntu-edge ruby -v"
  [[ "${output}" =~ "3.3" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-infra-aws-ubuntu-edge awspec -v"
  [[ "${output}" =~ "1.32" ]]
}

@test "trivy version" {
  run bash -c "docker exec circleci-infra-aws-ubuntu-edge trivy --version"
  [[ "${output}" =~ "0.61" ]]
}

@test "checkov version" {
  run bash -c "docker exec circleci-infra-aws-ubuntu-edge checkov -v"
  [[ "${output}" =~ "3.2" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-infra-aws-ubuntu-edge gren --version"
  [[ "${output}" =~ "0.17" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-infra-aws-ubuntu-edge snyk version"
  [[ "${output}" =~ "1.1296" ]]
}

@test "circlepipe version" {
  run bash -c "docker exec circleci-infra-aws-ubuntu-edge circlepipe version"
  [[ "${output}" =~ "0.3" ]]
}

@test "shasum version" {
  run bash -c "docker exec circleci-infra-aws-ubuntu-edge shasum --version"
  [[ "${output}" =~ "6." ]]
}

@test "cosign version" {
  run bash -c "docker exec circleci-infra-aws-ubuntu-edge cosign version"
  [[ "${output}" =~ "2.4" ]]
}

@test "kubectl version" {
  run bash -c "docker exec circleci-infra-aws-ubuntu-edge kubectl version --client=true"
  [[ "${output}" =~ "1.32" ]]
}

@test "helm version" {
  run bash -c "docker exec circleci-infra-aws-ubuntu-edge helm version"
  [[ "${output}" =~ "3.17" ]]
}
