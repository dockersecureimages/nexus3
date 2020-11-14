# Sonatype Nexus3

Sonatype Nexus Repository Manager 3, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~292MB)

Security scanning using Clair
```
clair-scanner secureimages/nexus3:3.28.1-alpine-3.12.1
2020/11/14 15:26:44 [INFO] ▶ Start clair-scanner
2020/11/14 15:26:47 [INFO] ▶ Server listening on port 9279
2020/11/14 15:26:47 [INFO] ▶ Analyzing ff72598b05f57e6f83d56b858ba9783796e99aea2dcef391b3fa688c1e077ae5
2020/11/14 15:26:48 [INFO] ▶ Analyzing e4a5b108b0bcd9abd955b722e3ce9c47622303b7c545bef9c10112e8ed767311
2020/11/14 15:26:48 [INFO] ▶ Analyzing 6703f578bbb6d04b527ca36a78b181903f30010a7c9c53f393f51f25102d6ddf
2020/11/14 15:26:49 [INFO] ▶ Image [secureimages/nexus3:3.28.1-alpine-3.12.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress secureimages/nexus3:3.28.1-alpine-3.12.1
2020-11-14T15:26:52.381Z        INFO    Need to update DB
2020-11-14T15:26:52.381Z        INFO    Downloading DB...
2020-11-14T15:26:59.193Z        INFO    Detecting Alpine vulnerabilities...

secureimages/nexus3:3.28.1-alpine-3.12.1 (alpine 3.12.1)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~634MB)

[https://hub.docker.com/r/sonatype/nexus3](https://hub.docker.com/r/sonatype/nexus3)
```
docker pull sonatype/nexus3:3.28.1
```

Security scanning using Clair
```
clair-scanner sonatype/nexus3:3.28.1
2020/11/14 15:27:05 [INFO] ▶ Start clair-scanner
2020/11/14 15:27:16 [INFO] ▶ Server listening on port 9279
2020/11/14 15:27:16 [INFO] ▶ Analyzing 1de76a962da9f1bf775dd311c39a5895878fb76df24ee89b2c7868c501f5a116
2020/11/14 15:27:17 [INFO] ▶ Analyzing 7ca3abe1ab65a57fad78cc86dbf8e7dfee1948dbd4507b87b16b07a2efe8e0a4
2020/11/14 15:27:17 [INFO] ▶ Analyzing f1fee87a9156ab74571dc0ac36cc25bb410793e613259ecdff3d5ab91895ae25
2020/11/14 15:27:17 [INFO] ▶ Analyzing fb7fdeae544020b1733b08b9fb0c7d39bd944dc8c5b82786b0eaeaf03760690b
2020/11/14 15:27:18 [WARN] ▶ Image [sonatype/nexus3:3.28.1] contains 3 total vulnerabilities
2020/11/14 15:27:18 [ERRO] ▶ Image [sonatype/nexus3:3.28.1] contains 3 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress sonatype/nexus3:3.28.1
2020-11-14T15:27:26.192Z        INFO    Need to update DB
2020-11-14T15:27:26.192Z        INFO    Downloading DB...
2020-11-14T15:27:40.739Z        INFO    Detecting RHEL/CentOS vulnerabilities...

sonatype/nexus3:3.28.1 (redhat 8.2)
===================================
Total: 212 (UNKNOWN: 0, LOW: 83, MEDIUM: 125, HIGH: 4, CRITICAL: 0)
```
