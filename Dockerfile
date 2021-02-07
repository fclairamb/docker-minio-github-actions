FROM minio/minio:RELEASE.2021-02-07T01-31-02Z
ENTRYPOINT ["/bin/sh", "-c", "minio ${MINIO_COMMAND:-server} ${MINIO_DIR:-/data}"] 
