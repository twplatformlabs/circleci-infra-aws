<div align="center">
	<p>
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/twplatformlabs/static/master/thoughtworks_flamingo_wave.png?sanitize=true" width=200 />
    <br />
		<img alt="DPS Title" src="https://raw.githubusercontent.com/twplatformlabs/static/master/EMPCPlatformStarterKitsImage.png?sanitize=true" width=350/>
	</p>
  <h3>PSK Convenience Images</h3>
  <h1>twdps/circleci-infra-aws</h1>
  <a href="https://app.circleci.com/pipelines/github/twplatformlabs/circleci-infra-aws"><img src="https://circleci.com/gh/twplatformlabs/circleci-infra-aws.svg?style=shield"></a> <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/twplatformlabs/circleci-infra-aws"></a>
</div>
<br />

Tools and packages used in infrastructure pipelines managing AWS.  

Primary packages include:  
- terraform, tflint, trivy, terrascan, checkov  
- python & awscli/boto3  
- awspec, bats  
- docker, kubectl, helm, cosign, circlepipe, github-cli  

See Relase Notes for detailed information about changes and updates.  

See the psk [circleci-remote-docker](https://github.com/twplatformlabs/circleci-remote-docker) image repository for details image signing and sbom verification used by all twdps PSK executor images.  

_Note. Terraform 1.10 seems to introduce a breaking change when using terraform cloud as `remote` backend. Not certain, but it appears as though Hashi wants app.terraform.io to use the cloud backend directive going foward rather then remote and has made some change based on that assumption that is resulting in recurring errors when attempting to run terraform plan or apply. During the initial fetch-state action it locks the state and then returns an error saying it could not release the lock. It doesn't do this 100% of the time but more often than not. Reverting to 1.9 resolved the problem. The `cloud` backend does not support prefix naming and this results in additional overhead when attempting to maintain DRY tf pipeline patterns. Further investigation is required._
