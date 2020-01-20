# Sonatype Nexus3

Sonatype Nexus Repository Manager 3, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/nexus3:3.20.1-alpine-3.11.3
2020/01/20 12:03:22 [INFO] ▶ Start clair-scanner
2020/01/20 12:03:25 [INFO] ▶ Server listening on port 9279
2020/01/20 12:03:25 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/01/20 12:03:25 [INFO] ▶ Analyzing acff518f3dd1befebbe1b5d3bfead50c03487b5d72ec5a430d9cef548756f1e2
2020/01/20 12:03:25 [INFO] ▶ Analyzing d23baeddfcd30be1ae1a4673fddbd5ad16da120f6d4d986e3e70b1fd472bb9d9
2020/01/20 12:03:25 [INFO] ▶ Image [secureimages/nexus3:3.20.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress secureimages/nexus3:3.20.1-alpine-3.11.3
2020-01-20T10:03:50.170Z        INFO    Need to update DB
2020-01-20T10:03:50.170Z        INFO    Downloading DB...
2020-01-20T10:03:53.698Z        INFO    Reopening DB...
2020-01-20T10:03:56.745Z        INFO    Detecting Alpine vulnerabilities...

secureimages/nexus3:3.20.1-alpine-3.11.3 (alpine 3.11.3)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/sonatype/nexus3](https://hub.docker.com/r/sonatype/nexus3)
```
docker pull sonatype/nexus3:3.20.1
```

Security scanning using Clair
```
clair-scanner sonatype/nexus3:3.20.1
2020/01/20 12:04:17 [INFO] ▶ Start clair-scanner
2020/01/20 12:04:26 [INFO] ▶ Server listening on port 9279
2020/01/20 12:04:26 [INFO] ▶ Analyzing d994a52d4062d3f652cecccda1234fc5311556b8d6c384949b9249c2e5cd6ebe
2020/01/20 12:04:28 [INFO] ▶ Analyzing ae2c4fa6ee67e8c4cb5ecd615d908ec9ef79cf1304b9b0da50011abdd30faa09
2020/01/20 12:04:28 [INFO] ▶ Analyzing 23e2441db2b7d24405225a122362c8fe3da64f23e01208654603f0744e92f3b0
2020/01/20 12:04:28 [INFO] ▶ Analyzing 5d366d3d5e375161cc6194eff4a9c02e3cf33568442d8a6753b9c0f2caef82cf
2020/01/20 12:04:29 [INFO] ▶ Image [sonatype/nexus3:3.20.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.2 --no-progress sonatype/nexus3:3.20.1
2020-01-20T10:04:51.937Z        INFO    Need to update DB
2020-01-20T10:04:51.937Z        INFO    Downloading DB...
2020-01-20T10:04:56.115Z        INFO    Reopening DB...
2020-01-20T10:05:06.380Z        INFO    Detecting RHEL/CentOS vulnerabilities...

sonatype/nexus3:3.20.1 (redhat 8.1)
===================================
Total: 182 (UNKNOWN: 0, LOW: 24, MEDIUM: 133, HIGH: 22, CRITICAL: 3)
```
