# Sonatype Nexus3

Sonatype Nexus Repository Manager 3, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~289MB)

Security scanning using Clair
```
clair-scanner secureimages/nexus3:3.26.0-alpine-3.12.0
2020/08/11 17:24:12 [INFO] ▶ Start clair-scanner
2020/08/11 17:24:15 [INFO] ▶ Server listening on port 9279
2020/08/11 17:24:15 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/08/11 17:24:15 [INFO] ▶ Analyzing 0f5b8a11ae04a82062d2f8c91e5acc78613669e1a84b12ce4084d38f39f65d58
2020/08/11 17:24:15 [INFO] ▶ Analyzing 2719f703785cdfec06ab985fac13dd0b82d65d39957f7929c4ba0debc06f4f9f
2020/08/11 17:24:16 [INFO] ▶ Image [secureimages/nexus3:3.26.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.2 --no-progress secureimages/nexus3:3.26.0-alpine-3.12.0
2020-08-11T17:24:18.492Z        INFO    Need to update DB
2020-08-11T17:24:18.493Z        INFO    Downloading DB...
2020-08-11T17:24:26.779Z        INFO    Detecting Alpine vulnerabilities...

secureimages/nexus3:3.26.0-alpine-3.12.0 (alpine 3.12.0)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~632MB)

[https://hub.docker.com/r/sonatype/nexus3](https://hub.docker.com/r/sonatype/nexus3)
```
docker pull sonatype/nexus3:3.26.0
```

Security scanning using Clair
```
clair-scanner sonatype/nexus3:3.26.0
2020/08/11 17:24:31 [INFO] ▶ Start clair-scanner
2020/08/11 17:24:40 [INFO] ▶ Server listening on port 9279
2020/08/11 17:24:40 [INFO] ▶ Analyzing 8e575a5d5157dcaf0b35d83dac8ff6c6fcf67553beab3271740c21bb9bbcfd69
2020/08/11 17:24:41 [INFO] ▶ Analyzing c8065ff1b489edf5cc8543c049ffb9b43a7d27899f6f247ce4cd34347833fd1e
2020/08/11 17:24:41 [INFO] ▶ Analyzing 588a2b4e5bb2607b3a8ca8ddd6842936cd081f826b333c1a211f205b9d973787
2020/08/11 17:24:41 [INFO] ▶ Analyzing 091b23776775ca07ff1c5b6fbd20c17a8a4da2059cf994d2681abd440fbf300e
2020/08/11 17:24:42 [INFO] ▶ Image [sonatype/nexus3:3.26.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.2 --no-progress sonatype/nexus3:3.26.0
2020-08-11T17:24:44.472Z        INFO    Need to update DB
2020-08-11T17:24:44.472Z        INFO    Downloading DB...
2020-08-11T17:24:59.145Z        INFO    Detecting RHEL/CentOS vulnerabilities...

sonatype/nexus3:3.26.0 (redhat 8.2)
===================================
Total: 172 (UNKNOWN: 0, LOW: 70, MEDIUM: 99, HIGH: 3, CRITICAL: 0)
```
