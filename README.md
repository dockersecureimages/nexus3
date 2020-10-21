# Sonatype Nexus3

Sonatype Nexus Repository Manager 3, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~292MB)

Security scanning using Clair
```
clair-scanner secureimages/nexus3:3.28.1-alpine-3.12.0
2020/10/21 08:43:27 [INFO] ▶ Start clair-scanner
2020/10/21 08:43:30 [INFO] ▶ Server listening on port 9279
2020/10/21 08:43:30 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/10/21 08:43:30 [INFO] ▶ Analyzing 2dfd9d083eabfa6773357c3514e735a04c0b3922f288755aa72081c0618b7a53
2020/10/21 08:43:30 [INFO] ▶ Analyzing 2211fd62e6d16fb13e5d03f89b0389d8f00c05c127efdbb05158ece208e509e3
2020/10/21 08:43:31 [INFO] ▶ Image [secureimages/nexus3:3.28.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress secureimages/nexus3:3.28.1-alpine-3.12.0
2020-10-21T08:43:34.424Z        INFO    Need to update DB
2020-10-21T08:43:34.425Z        INFO    Downloading DB...
2020-10-21T08:43:41.823Z        INFO    Detecting Alpine vulnerabilities...

secureimages/nexus3:3.28.1-alpine-3.12.0 (alpine 3.12.0)
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
2020/10/21 08:44:32 [INFO] ▶ Start clair-scanner
2020/10/21 08:44:44 [INFO] ▶ Server listening on port 9279
2020/10/21 08:44:44 [INFO] ▶ Analyzing 1de76a962da9f1bf775dd311c39a5895878fb76df24ee89b2c7868c501f5a116
2020/10/21 08:44:45 [INFO] ▶ Analyzing 7ca3abe1ab65a57fad78cc86dbf8e7dfee1948dbd4507b87b16b07a2efe8e0a4
2020/10/21 08:44:45 [INFO] ▶ Analyzing f1fee87a9156ab74571dc0ac36cc25bb410793e613259ecdff3d5ab91895ae25
2020/10/21 08:44:45 [INFO] ▶ Analyzing fb7fdeae544020b1733b08b9fb0c7d39bd944dc8c5b82786b0eaeaf03760690b
2020/10/21 08:44:46 [INFO] ▶ Image [sonatype/nexus3:3.28.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress sonatype/nexus3:3.28.1
2020-10-21T08:44:48.735Z        INFO    Need to update DB
2020-10-21T08:44:48.735Z        INFO    Downloading DB...
2020-10-21T08:45:03.998Z        INFO    Detecting RHEL/CentOS vulnerabilities...

sonatype/nexus3:3.28.1 (redhat 8.2)
===================================
Total: 185 (UNKNOWN: 0, LOW: 74, MEDIUM: 108, HIGH: 3, CRITICAL: 0)
```
