# pre-commit-terraform-lock

Check that .terraform.lock.hcl has hashes for linux windows arm and amd64

Requirements
------------
  pre-commit-shell requires the following to run:

  * [pre-commit](http://pre-commit.com)
    

Install
---------

1. create .pre-commit-config.yaml in you git project
2. pre-commit install 
3. enjoy it

example .pre-commit-config.yaml as following:

```yaml
repos:
- repo: git://github.com/anden-dev/pre-commit-terraform-lock
  rev: v1.0.0
  hooks:
  - id: terraform-lock-check
```
