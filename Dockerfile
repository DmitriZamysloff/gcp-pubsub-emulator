FROM google/cloud-sdk:alpine
RUN apk --update add openjdk7-jre && gcloud components install beta --quiet 
EXPOSE 8538
VOLUME /data
ENTRYPOINT ["gcloud","beta","emulators","pubsub","start","--project=$PROJECT"]
CMD ["start", "--host-port=127.0.0.1:8538", "--data-dir=/data"]
