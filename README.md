# Sonatype Nexus3

Sonatype Nexus Repository Manager 3, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~292MB)

Security scanning using Clair
```
clair-scanner secureimages/nexus3:3.28.0-alpine-3.12.0
2020/10/15 19:21:05 [INFO] ▶ Start clair-scanner
2020/10/15 19:21:08 [INFO] ▶ Server listening on port 9279
2020/10/15 19:21:08 [INFO] ▶ Analyzing 31609b718dd2bed92b93b1ab00c0ff67419a3121d0144bef0dc6ca49718820a7
2020/10/15 19:21:08 [INFO] ▶ Analyzing d18941fbbf2a3cfeb74dfcb29bbb99668fd3cb8669790c532807e3d7308a6b0c
2020/10/15 19:21:08 [INFO] ▶ Analyzing b62eefee4479c64fc118a05dbe093a136feaebb1844abf6e4811937fbef737dc
2020/10/15 19:21:08 [INFO] ▶ Image [secureimages/nexus3:3.28.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress secureimages/nexus3:3.28.0-alpine-3.12.0
2020-10-15T19:21:14.126Z        INFO    Need to update DB
2020-10-15T19:21:14.126Z        INFO    Downloading DB...
2020-10-15T19:22:31.434Z        INFO    Detecting Alpine vulnerabilities...

secureimages/nexus3:3.28.0-alpine-3.12.0 (alpine 3.12.0)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~634MB)

[https://hub.docker.com/r/sonatype/nexus3](https://hub.docker.com/r/sonatype/nexus3)
```
docker pull sonatype/nexus3:3.28.0
```

Security scanning using Clair
```
clair-scanner sonatype/nexus3:3.28.0
2020/10/15 19:22:36 [INFO] ▶ Start clair-scanner
2020/10/15 19:22:46 [INFO] ▶ Server listening on port 9279
2020/10/15 19:22:46 [INFO] ▶ Analyzing 1de76a962da9f1bf775dd311c39a5895878fb76df24ee89b2c7868c501f5a116
2020/10/15 19:22:47 [INFO] ▶ Analyzing 7ca3abe1ab65a57fad78cc86dbf8e7dfee1948dbd4507b87b16b07a2efe8e0a4
2020/10/15 19:22:47 [INFO] ▶ Analyzing c02fc4562391d2023815cc0cbf9f44203dc77d7db4e72c4d80dd1553536d5a98
2020/10/15 19:22:47 [INFO] ▶ Analyzing 4a7d1741c93e21bd229e2771af55ba4c8b3f9ae9abd21f38dde8ece88ee5309c
2020/10/15 19:22:48 [INFO] ▶ Image [sonatype/nexus3:3.28.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.12.0 --no-progress sonatype/nexus3:3.28.0
2020-10-15T19:22:50.035Z        INFO    Need to update DB
2020-10-15T19:22:50.035Z        INFO    Downloading DB...
2020-10-15T19:23:15.868Z        INFO    Detecting RHEL/CentOS vulnerabilities...

sonatype/nexus3:3.28.0 (redhat 8.2)
===================================
Total: 184 (UNKNOWN: 0, LOW: 74, MEDIUM: 107, HIGH: 3, CRITICAL: 0)
```
