FROM google/cloud-sdk:alpine
RUN apk --update add openjdk11-jre && gcloud components install beta pubsub-emulator --quiet 
EXPOSE 8538
VOLUME /data
ENTRYPOINT ["gcloud","beta","emulators","pubsub","start","--project=$PROJECT"]
CMD ["start", "--host-port=127.0.0.1:8538", "--data-dir=/data"]
