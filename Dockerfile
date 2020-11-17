FROM google/cloud-sdk:alpine
EXPOSE 8538
VOLUME /data
ENTRYPOINT ["gcloud","beta","emulators","pubsub","start","--project=$PROJECT"]
CMD ["start", "--host-port=127.0.0.1:8538", "--data-dir=/data"]
