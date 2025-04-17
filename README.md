<div align="center">
	<p>
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/twplatformlabs/static/master/psk_banner.png" width=800 />
	</p>
  <h1>twdps/circleci-infra-aws</h1>
  <h3>PSK CircleCI Convenience Images</h3>
  <a href="https://app.circleci.com/pipelines/github/twplatformlabs/circleci-infra-aws"><img src="https://circleci.com/gh/twplatformlabs/circleci-infra-aws.svg?style=shield"></a> <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/twplatformlabs/circleci-infra-aws"></a>
</div>
<br />

Tools and packages used in infrastructure pipelines managing AWS.  

Primary packages include:  
- terraform, tflint, trivy, terrascan, checkov  
- python & awscli/boto3  
- awspec, bats  
- docker, kubectl, helm, cosign, circlepipe, github-cli  

_Review the build and CVE scan logs in the release artifacts for specific packages versions and known vulnerabilities (if any)._  

### Tagging Scheme

This image has the following tagging scheme:

```
twdps/circleci-base-image:-<YYYY.MM>
twdps/circleci-base-image:-stable
twdps/circleci-base-image:-edge
```

`<YYYY.MM>` - Release version of the image, referred to by the 4 digit year, dot, and a 2 digit month. For example `2020.05` would be the monthly tag from May 2020. This image is generated monthly, based on the then current release of the base image and related os packages and provides a predictable fixed point for use in an executor Dockerfile. The purpose-specific packages can be pinned depending on the type of package and organizational practices. Occasionally there will be interim patches released and you may see `2021.08.1` or addtional numbered versions.  

`stable` - generic tag that always points to the latest, monthly release image. Provides a decent level of stability while recieving all software updates and recommended security patches.  

`edge` - is the latest development of the Base image. Built from the `HEAD` of the `main` branch. Intended to be used as a testing version of the image with the most recent changes.  

See the psk [circleci-remote-docker](https://github.com/twplatformlabs/circleci-remote-docker) image repository for details image signing and sbom verification used by all twdps PSK executor images.  

_Note. Terraform 1.10 seems to introduce a breaking change when using terraform cloud as `remote` backend. Not certain, but it appears as though Hashi wants app.terraform.io to use the cloud backend directive going foward rather then remote and has made some change based on that assumption that is resulting in recurring errors when attempting to run terraform plan or apply. During the initial fetch-state action it locks the state and then returns an error saying it could not release the lock. It doesn't do this 100% of the time but more often than not. Reverting to 1.9 resolved the problem. The `cloud` backend does not support prefix naming and this results in additional overhead when attempting to maintain DRY tf pipeline patterns. Further investigation is required._
