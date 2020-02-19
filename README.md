# Sonatype Nexus3

Sonatype Nexus Repository Manager 3, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/nexus3:3.21.1-alpine-3.11.3
2020/02/19 09:49:40 [INFO] ▶ Start clair-scanner
2020/02/19 09:49:43 [INFO] ▶ Server listening on port 9279
2020/02/19 09:49:43 [INFO] ▶ Analyzing c60e0e5e0b8cce2c353f5af4186afb2cde56680bc78ff165fd2368a003530178
2020/02/19 09:49:43 [INFO] ▶ Analyzing 5c6613ea267d8daf36e0ec73f9b873dc6e2025ef67b09e9622d3bb937b20c9ab
2020/02/19 09:49:43 [INFO] ▶ Analyzing c9aaea81f21276f01f260f565739b3b548380b676ceed6dfe828137d37cc2938
2020/02/19 09:49:43 [INFO] ▶ Image [secureimages/nexus3:3.21.1-alpine-3.11.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress secureimages/nexus3:3.21.1-alpine-3.11.3
2020-02-19T07:49:46.571Z        INFO    Need to update DB
2020-02-19T07:49:46.571Z        INFO    Downloading DB...
2020-02-19T07:49:50.558Z        INFO    Reopening DB...
2020-02-19T07:49:53.816Z        INFO    Detecting Alpine vulnerabilities...

secureimages/nexus3:3.21.1-alpine-3.11.3 (alpine 3.11.3)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/sonatype/nexus3](https://hub.docker.com/r/sonatype/nexus3)
```
docker pull sonatype/nexus3:3.21.1
```

Security scanning using Clair
```
clair-scanner sonatype/nexus3:3.21.1
2020/02/19 09:50:00 [INFO] ▶ Start clair-scanner
2020/02/19 09:50:13 [INFO] ▶ Server listening on port 9279
2020/02/19 09:50:13 [INFO] ▶ Analyzing dccf966536cb89fa5f0c1e499443346a3a48f85d50075ab2ad17dbc4e5aabe70
2020/02/19 09:50:15 [INFO] ▶ Analyzing 7593de3218523dc707b5d7db686783174d1a76453b4707c00f57803590b36e55
2020/02/19 09:50:15 [INFO] ▶ Analyzing 4cc764b1596623efdea9986d23f731a6196265c5a8d1eb494ab117ef1bc1b877
2020/02/19 09:50:15 [INFO] ▶ Analyzing 02227144d8b3b9e6a9a729393f872cf5ad8171c24bbfabffc497f1222c702f8c
2020/02/19 09:50:16 [INFO] ▶ Image [sonatype/nexus3:3.21.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.4 --no-progress sonatype/nexus3:3.21.1
2020-02-19T07:50:18.564Z        INFO    Need to update DB
2020-02-19T07:50:18.564Z        INFO    Downloading DB...
2020-02-19T07:50:22.665Z        INFO    Reopening DB...
2020-02-19T07:50:35.865Z        INFO    Detecting RHEL/CentOS vulnerabilities...

sonatype/nexus3:3.21.1 (redhat 8.1)
===================================
Total: 171 (UNKNOWN: 0, LOW: 16, MEDIUM: 129, HIGH: 23, CRITICAL: 3)
```
