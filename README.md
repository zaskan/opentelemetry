Playing with Opentelemetry and Kafka 

~~~
podman network create otel-network
podman build
podman-compose up -d 
~~~
Opentelemetry could fail if kafka is not ready yet - need to fix that. Repeat the command if it fails

Write in the topic with:

~~~
curl -X POST http://localhost:4318/v1/traces -H "Content-Type: application/json" -d @trace.json
~~~

Read the topic with:

~~~
podman run -it --rm --network otel-network bitnami/kafka:3.4.1 /opt/bitnami/kafka/bin/kafka-console-consumer.sh --bootstrap-server kafka:9092 --topic otel-messages --from-beginning
~~~


