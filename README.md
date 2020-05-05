# Sonatype Nexus3

Sonatype Nexus Repository Manager 3, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~267MB)

Security scanning using Clair
```
clair-scanner secureimages/nexus3:3.23.0-alpine-3.11.6
2020/05/05 18:25:46 [INFO] ▶ Start clair-scanner
2020/05/05 18:25:48 [INFO] ▶ Server listening on port 9279
2020/05/05 18:25:48 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/05/05 18:25:49 [INFO] ▶ Analyzing 34e036f048b46573cfc07484a72b7bc5851e22969b23070929c405fd4806f1fe
2020/05/05 18:25:49 [INFO] ▶ Analyzing cc1cefbef871c7d90e5a44926b3cb0062216fbc1c8d5f7a54f4f3602bf78bcc9
2020/05/05 18:25:50 [INFO] ▶ Image [secureimages/nexus3:3.23.0-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/nexus3:3.23.0-alpine-3.11.6
2020-05-05T15:25:56.199Z        INFO    Need to update DB
2020-05-05T15:25:56.199Z        INFO    Downloading DB...
2020-05-05T15:26:04.240Z        INFO    Detecting Alpine vulnerabilities...

secureimages/nexus3:3.23.0-alpine-3.11.6 (alpine 3.11.6)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~644MB)

[https://hub.docker.com/r/sonatype/nexus3](https://hub.docker.com/r/sonatype/nexus3)
```
docker pull sonatype/nexus3:3.23.0
```

Security scanning using Clair
```
clair-scanner sonatype/nexus3:3.23.0
2020/05/05 18:26:09 [INFO] ▶ Start clair-scanner
2020/05/05 18:26:19 [INFO] ▶ Server listening on port 9279
2020/05/05 18:26:19 [INFO] ▶ Analyzing ca07ed4da8e4c5b61eb5867d57914ef95a683e7a8bc61df9f05d3b6d8a8c852b
2020/05/05 18:26:20 [INFO] ▶ Analyzing ba310aa8f832c393c77f761611f3d77621376f601d135f740864edd107c2c437
2020/05/05 18:26:20 [INFO] ▶ Analyzing 75e6f2a08767871abaefa246c24795c225ce5cf7da7c4b58593fee38c8f2625f
2020/05/05 18:26:20 [INFO] ▶ Analyzing eee5c85b067b3b9eaccd2c8d4063ca7aee45710385292b0bcafe815ec1284af0
2020/05/05 18:26:21 [INFO] ▶ Image [sonatype/nexus3:3.23.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress sonatype/nexus3:3.23.0
2020-05-05T15:26:23.188Z        INFO    Need to update DB
2020-05-05T15:26:23.188Z        INFO    Downloading DB...
2020-05-05T15:26:38.324Z        INFO    Detecting RHEL/CentOS vulnerabilities...

sonatype/nexus3:3.23.0 (redhat 8.2)
===================================
Total: 138 (UNKNOWN: 0, LOW: 12, MEDIUM: 105, HIGH: 18, CRITICAL: 3)
```
