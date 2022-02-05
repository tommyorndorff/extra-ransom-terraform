# extra-ransom-terraform

## Overview
Source for my personal cloud infrastructure.  

## Changelog
**04-02-2022** Initial commits and adds support of:
* Hosted zone for *extra-ransom.net*
* ACM cert for the same
* s3 bucket and policy for s3-backed static site
* Cloudfront for s3-backed static site

## Shipping
```sh
$ cd src/
$ AWS_PROFILE=profile_name terraform plan
$ AWS_PROFILE=profile_name terraform apply
```
 
## Known Issues
* The providers.tf should take an `aws_profile` property but it isnt being 
respected.  