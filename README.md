# Sonatype Nexus3

Sonatype Nexus Repository Manager 3, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~290MB)

Security scanning using Clair
```
clair-scanner secureimages/nexus3:3.27.0-alpine-3.12.0
2020/09/04 15:09:25 [INFO] ▶ Start clair-scanner
2020/09/04 15:09:27 [INFO] ▶ Server listening on port 9279
2020/09/04 15:09:27 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/09/04 15:09:27 [INFO] ▶ Analyzing 4860585d6be236e422595d6e2dfdf11a82a1aa1e9813a04b8984b279eb23d1ec
2020/09/04 15:09:28 [INFO] ▶ Analyzing 3f6944345014a3f2a368e3960285dc27114c8d9d9247c01e55c916ae96c134ce
2020/09/04 15:09:28 [INFO] ▶ Image [secureimages/nexus3:3.27.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress secureimages/nexus3:3.27.0-alpine-3.12.0
2020-09-04T15:09:36.623Z        INFO    Need to update DB
2020-09-04T15:09:36.623Z        INFO    Downloading DB...
2020-09-04T15:09:44.284Z        INFO    Detecting Alpine vulnerabilities...

secureimages/nexus3:3.27.0-alpine-3.12.0 (alpine 3.12.0)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~632MB)

[https://hub.docker.com/r/sonatype/nexus3](https://hub.docker.com/r/sonatype/nexus3)
```
docker pull sonatype/nexus3:3.27.0
```

Security scanning using Clair
```
clair-scanner sonatype/nexus3:3.27.0
2020/09/04 15:10:08 [INFO] ▶ Start clair-scanner
2020/09/04 15:10:17 [INFO] ▶ Server listening on port 9279
2020/09/04 15:10:17 [INFO] ▶ Analyzing 8e575a5d5157dcaf0b35d83dac8ff6c6fcf67553beab3271740c21bb9bbcfd69
2020/09/04 15:10:18 [INFO] ▶ Analyzing c8065ff1b489edf5cc8543c049ffb9b43a7d27899f6f247ce4cd34347833fd1e
2020/09/04 15:10:18 [INFO] ▶ Analyzing b900bb1b86e14a740272810173dbdebe0dd9ac9721311975aafaebf4dac49f65
2020/09/04 15:10:18 [INFO] ▶ Analyzing f1bf7e8e69ed1df7df0f95e318f1dcb96ac00d1993bfa2c58c57dcdc38b87bee
2020/09/04 15:10:19 [INFO] ▶ Image [sonatype/nexus3:3.27.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.11.0 --no-progress sonatype/nexus3:3.27.0
2020-09-04T15:10:21.078Z        INFO    Need to update DB
2020-09-04T15:10:21.078Z        INFO    Downloading DB...
2020-09-04T15:10:36.111Z        INFO    Detecting RHEL/CentOS vulnerabilities...

sonatype/nexus3:3.27.0 (redhat 8.2)
===================================
Total: 181 (UNKNOWN: 0, LOW: 74, MEDIUM: 100, HIGH: 7, CRITICAL: 0)
```
