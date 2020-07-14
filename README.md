# Sonatype Nexus3

Sonatype Nexus Repository Manager 3, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~284MB)

Security scanning using Clair
```
clair-scanner secureimages/nexus3:3.25.0-alpine-3.12.0
2020/07/14 18:24:41 [INFO] ▶ Start clair-scanner
2020/07/14 18:24:45 [INFO] ▶ Server listening on port 9279
2020/07/14 18:24:45 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/07/14 18:24:58 [INFO] ▶ Analyzing 1c66e7ea082a5bcbfd33e6208430d0f012ae4cdbd6bc0a3f3ba53d1684a47e27
2020/07/14 18:25:04 [INFO] ▶ Analyzing ad6c5526bff3476d01571a962fe26c02c70610ce274637c5fc7367f9d392bedb
2020/07/14 18:25:08 [INFO] ▶ Image [secureimages/nexus3:3.25.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.2 --no-progress secureimages/nexus3:3.25.0-alpine-3.12.0
2020-07-14T15:25:14.561Z        INFO    Need to update DB
2020-07-14T15:25:14.561Z        INFO    Downloading DB...
2020-07-14T15:25:34.342Z        INFO    Detecting Alpine vulnerabilities...

secureimages/nexus3:3.25.0-alpine-3.12.0 (alpine 3.12.0)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~626MB)

[https://hub.docker.com/r/sonatype/nexus3](https://hub.docker.com/r/sonatype/nexus3)
```
docker pull sonatype/nexus3:3.25.0
```

Security scanning using Clair
```
clair-scanner sonatype/nexus3:3.25.0
2020/07/14 18:25:42 [INFO] ▶ Start clair-scanner
2020/07/14 18:27:46 [INFO] ▶ Server listening on port 9279
2020/07/14 18:27:46 [INFO] ▶ Analyzing 48f8056ac014ce998c4120136b7f55bf257213c4385cd969e7e657101d00e0e4
2020/07/14 18:27:47 [INFO] ▶ Analyzing 7682016b646ea0bebdbe2e96efb6053e438380f9eb0a5f203582f59cd4dcca40
2020/07/14 18:27:47 [INFO] ▶ Analyzing 5e612b28a0818034d5a6c746496b21c2dd2f2753441265293f07b93a2f66d02a
2020/07/14 18:27:47 [INFO] ▶ Analyzing b5b76ea8accdff6fdc14f5e1321e8b57f398a8b86fa1ae0a8f2c67952fed29b7
2020/07/14 18:27:48 [INFO] ▶ Image [sonatype/nexus3:3.25.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.2 --no-progress sonatype/nexus3:3.25.0
2020-07-14T15:28:44.653Z        INFO    Need to update DB
2020-07-14T15:28:44.653Z        INFO    Downloading DB...
2020-07-14T15:29:16.082Z        INFO    Detecting RHEL/CentOS vulnerabilities...

sonatype/nexus3:3.25.0 (redhat 8.2)
===================================
Total: 164 (UNKNOWN: 0, LOW: 69, MEDIUM: 89, HIGH: 6, CRITICAL: 0)
```
