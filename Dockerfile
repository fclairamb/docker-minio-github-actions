FROM minio/minio:RELEASE.2021-02-19T04-38-02Z
ENTRYPOINT ["/bin/sh", "-c", "minio ${MINIO_COMMAND:-server} ${MINIO_DIR:-/data}"] 
