FROM minio/minio:RELEASE.2020-05-16T01-33-21Z
ENTRYPOINT ["/bin/sh", "-c", "minio ${MINIO_COMMAND:-server} ${MINIO_DIR:-/data}"] 
