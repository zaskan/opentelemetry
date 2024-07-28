# Use the OpenTelemetry Collector base image
FROM otel/opentelemetry-collector:0.105.0
# Set the command to run the OpenTelemetry Collector with the provided configuration
CMD ["--config", "/etc/otel-collector-config.yaml"]
