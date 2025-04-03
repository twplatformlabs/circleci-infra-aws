#!/usr/bin/env bats

@test "terraform version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge terraform version"
  [[ "${output}" =~ "1.9" ]]
}

@test "tflint version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge tflint --version"
  [[ "${output}" =~ "0.56" ]]
}

@test "python3 version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge python -V"
  [[ "${output}" =~ "3.12" ]]
}

@test "awscli version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge aws --version"
  [[ "${output}" =~ "1.36" ]]
}

@test "bats version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge bats -v"
  [[ "${output}" =~ "1.11" ]]
}

@test "ruby version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge ruby -v"
  [[ "${output}" =~ "3.3" ]]
}

@test "awspec version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge awspec -v"
  [[ "${output}" =~ "1.32" ]]
}

@test "trivy version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge trivy --version"
  [[ "${output}" =~ "0.61" ]]
}

@test "checkov version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge checkov -v"
  [[ "${output}" =~ "3.2" ]]
}

@test "gren version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge gren --version"
  [[ "${output}" =~ "0.17" ]]
}

@test "snyk version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge snyk version"
  [[ "${output}" =~ "1.1296" ]]
}

@test "circlepipe version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge circlepipe version"
  [[ "${output}" =~ "0.3" ]]
}

@test "shasum version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge shasum --version"
  [[ "${output}" =~ "6." ]]
}

@test "cosign version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge cosign version"
  [[ "${output}" =~ "2.4" ]]
}

@test "kubectl version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge kubectl version --client=true"
  [[ "${output}" =~ "1.32" ]]
}

@test "helm version" {
  run bash -c "docker exec circleci-infra-aws-alpine-edge helm version"
  [[ "${output}" =~ "3.17" ]]
}