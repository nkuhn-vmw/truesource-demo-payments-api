# Intentionally old base images: a TrueSource Viewer demo, do not build or deploy.
FROM eclipse-temurin:11.0.14_9-jre
WORKDIR /app
CMD ["echo", "This demo is not meant to run."]
