# minio service for github actions

This container is only useful because github actions do not support providing some container args for services.

There's an alternative option: the bitnami/minio but it is VERY slow to start, so you're basically slowing down all your tests.



## Usage

```yaml
jobs:
  example:
    runs-on: ubuntu-latest
    env:
      AWS_ACCESS_KEY_ID: minioadmin
      AWS_SECRET_ACCESS_KEY: minioadmin
    services:
      minio:
        image: fclairamb/minio-github-actions
        ports:
          - 9000:9000
    steps:
      - run: curl -v http://127.0.0.1:9000
```


