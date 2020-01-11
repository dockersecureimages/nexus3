# Sonatype Nexus3

Sonatype Nexus Repository Manager 3, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/nexus3:3.20.1-alpine-3.10.3
2020/01/10 22:45:24 [INFO] ▶ Start clair-scanner
2020/01/10 22:45:26 [INFO] ▶ Server listening on port 9279
2020/01/10 22:45:26 [INFO] ▶ Analyzing 04e45c0111fb11f85d938ddf23db2bb1cd729651296b5a94fb167d7770267313
2020/01/10 22:45:26 [INFO] ▶ Analyzing f6928a203fb506b2856d14ba4a2d2ff02542638c4607227dedbffee3f1599845
2020/01/10 22:45:26 [INFO] ▶ Analyzing 17d87b873745b5e1641c1a77fee462fb0df14ccc76856a54d1ae5d82403c1ebd
2020/01/10 22:45:27 [INFO] ▶ Analyzing 225a6c3eeabfab9701e8930867ca4f77eb6556968f0726be4adaff2c1d04101b
2020/01/10 22:45:27 [INFO] ▶ Image [secureimages/nexus3:3.20.1-alpine-3.10.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.1 --no-progress secureimages/nexus3:3.20.1-alpine-3.10.3
2020-01-10T20:45:37.644Z        INFO    Need to update DB
2020-01-10T20:45:37.644Z        INFO    Downloading DB...
2020-01-10T20:45:41.084Z        INFO    Reopening DB...
2020-01-10T20:45:48.217Z        INFO    Detecting Alpine vulnerabilities...

secureimages/nexus3:3.20.1-alpine-3.10.3 (alpine 3.10.3)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/sonatype/nexus3](https://hub.docker.com/r/sonatype/nexus3)
```
docker pull sonatype/nexus3
```

Security scanning using Clair
```
clair-scanner sonatype/nexus3:3.20.1
2020/01/10 22:28:49 [INFO] ▶ Start clair-scanner
2020/01/10 22:28:59 [INFO] ▶ Server listening on port 9279
2020/01/10 22:28:59 [INFO] ▶ Analyzing d994a52d4062d3f652cecccda1234fc5311556b8d6c384949b9249c2e5cd6ebe
2020/01/10 22:28:59 [INFO] ▶ Analyzing ae2c4fa6ee67e8c4cb5ecd615d908ec9ef79cf1304b9b0da50011abdd30faa09
2020/01/10 22:28:59 [INFO] ▶ Analyzing 23e2441db2b7d24405225a122362c8fe3da64f23e01208654603f0744e92f3b0
2020/01/10 22:28:59 [INFO] ▶ Analyzing 5d366d3d5e375161cc6194eff4a9c02e3cf33568442d8a6753b9c0f2caef82cf
2020/01/10 22:28:59 [INFO] ▶ Image [sonatype/nexus3:3.20.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.1 --no-progress sonatype/nexus3:3.20.1
2020-01-10T20:33:40.839Z        INFO    Need to update DB
2020-01-10T20:33:40.839Z        INFO    Downloading DB...
2020-01-10T20:33:43.767Z        INFO    Reopening DB...
2020-01-10T20:34:03.571Z        INFO    Detecting RHEL/CentOS vulnerabilities...

sonatype/nexus3:3.20.1 (redhat 8.1)
===================================
Total: 153 (UNKNOWN: 0, LOW: 12, MEDIUM: 120, HIGH: 18, CRITICAL: 3)

```
