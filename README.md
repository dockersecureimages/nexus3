# Sonatype Nexus3

Sonatype Nexus Repository Manager 3, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/nexus3:3.21.2-alpine-3.11.5
2020/03/24 18:16:45 [INFO] ▶ Start clair-scanner
2020/03/24 18:16:48 [INFO] ▶ Server listening on port 9279
2020/03/24 18:16:48 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/24 18:16:48 [INFO] ▶ Analyzing d75820de193c0a1f1df5dd4b78fe2ffe998fe33aa8acbf2db663f60380a3c3f8
2020/03/24 18:16:48 [INFO] ▶ Analyzing 5e2799e5705d1dad36ede8b07541863d42d010071edc10aa7647baeb4610cf1c
2020/03/24 18:16:48 [INFO] ▶ Image [secureimages/nexus3:3.21.2-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/nexus3:3.21.2-alpine-3.11.5
2020-03-24T16:16:54.252Z        INFO    Need to update DB
2020-03-24T16:16:54.252Z        INFO    Downloading DB...
2020-03-24T16:16:58.721Z        INFO    Reopening DB...
2020-03-24T16:17:02.667Z        INFO    Detecting Alpine vulnerabilities...

secureimages/nexus3:3.21.2-alpine-3.11.5 (alpine 3.11.5)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/sonatype/nexus3](https://hub.docker.com/r/sonatype/nexus3)
```
docker pull sonatype/nexus3:3.21.2
```

Security scanning using Clair
```
clair-scanner sonatype/nexus3:3.21.2
2020/03/24 18:17:07 [INFO] ▶ Start clair-scanner
2020/03/24 18:17:16 [INFO] ▶ Server listening on port 9279
2020/03/24 18:17:16 [INFO] ▶ Analyzing f348effac8c4f3cc0836e0000bbf8f6ae64e3b23ceb7b0df9425b6fa51c3b451
2020/03/24 18:17:18 [INFO] ▶ Analyzing 606689fc2b317258d8cd67911b0fef78fbc30cce6115f73335fd69755715c786
2020/03/24 18:17:18 [INFO] ▶ Analyzing aa688411b12c9e832a1f49f66061006542c5c740d0985be393e2e713ea948324
2020/03/24 18:17:18 [INFO] ▶ Analyzing b555bf4dadb996b1f6f068f905d50462182e21a32dad2483f24519d0cdc0b1b0
2020/03/24 18:17:19 [INFO] ▶ Image [sonatype/nexus3:3.21.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress sonatype/nexus3:3.21.2
2020-03-24T16:17:44.833Z        INFO    Need to update DB
2020-03-24T16:17:44.833Z        INFO    Downloading DB...
2020-03-24T16:17:49.080Z        INFO    Reopening DB...
2020-03-24T16:18:03.185Z        INFO    Detecting RHEL/CentOS vulnerabilities...

sonatype/nexus3:3.21.2 (redhat 8.1)
===================================
Total: 183 (UNKNOWN: 0, LOW: 19, MEDIUM: 138, HIGH: 23, CRITICAL: 3)
```
