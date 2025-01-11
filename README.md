# Uncommon Dockerfile Bug: Using ubuntu:latest and Missing User
This repository demonstrates an uncommon bug in a Dockerfile: using `ubuntu:latest` as the base image and missing a dedicated user for security. 
The `DockerfileBug.dockerfile` shows the incorrect implementation, while `DockerfileSolution.dockerfile` presents the improved, secure version.

**Problem:**
* `ubuntu:latest` is a volatile base image. Updates can break your Docker image unexpectedly.
* Running the application as root poses a significant security risk.