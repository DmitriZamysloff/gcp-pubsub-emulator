FROM google/cloud-sdk
LABEL maintainer="Dmitri Zamysloff <d.zamysloff@dzcs.com>" \
      version="0.1" \
      description="Google Cloud Pub/Sub Emulator"
EXPOSE 8538
VOLUME /data
ENTRYPOINT ["gcloud","beta","emulators","pubsub","start","--project=$PROJECT"]
CMD ["start", "--host-port=127.0.0.1:8538", "--data-dir=/data"]
