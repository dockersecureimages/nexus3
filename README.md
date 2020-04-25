# Sonatype Nexus3

Sonatype Nexus Repository Manager 3, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~267MB)

Security scanning using Clair
```
clair-scanner secureimages/nexus3:3.22.1-alpine-3.11.6
2020/04/25 17:22:32 [INFO] ▶ Start clair-scanner
2020/04/25 17:22:35 [INFO] ▶ Server listening on port 9279
2020/04/25 17:22:35 [INFO] ▶ Analyzing a5304328ea0f44bd1ac8bb5416ad6b7cc3b747ac232c6af66d7d9f12e9854344
2020/04/25 17:22:35 [INFO] ▶ Analyzing 52e97d1a3c7571e6e4d297032baf74f37b5d48f1f7eba0055513dc8081b3b719
2020/04/25 17:22:35 [INFO] ▶ Analyzing ba51f9356a58cd0efc7133e7b4731ffddf1f33ef3378947f41cdf68e8014871a
2020/04/25 17:22:35 [INFO] ▶ Image [secureimages/nexus3:3.22.1-alpine-3.11.6] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/nexus3:3.22.1-alpine-3.11.6
2020-04-25T14:22:40.914Z        INFO    Need to update DB
2020-04-25T14:22:40.914Z        INFO    Downloading DB...
2020-04-25T14:22:51.575Z        INFO    Detecting Alpine vulnerabilities...

secureimages/nexus3:3.22.1-alpine-3.11.6 (alpine 3.11.6)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~644MB)

[https://hub.docker.com/r/sonatype/nexus3](https://hub.docker.com/r/sonatype/nexus3)
```
docker pull sonatype/nexus3:3.22.1
```

Security scanning using Clair
```
clair-scanner sonatype/nexus3:3.22.1
2020/04/25 17:22:56 [INFO] ▶ Start clair-scanner
2020/04/25 17:23:07 [INFO] ▶ Server listening on port 9279
2020/04/25 17:23:07 [INFO] ▶ Analyzing 1e286011e104c5dbf4f568b4143b48892d9cd7406191824df2f1a3039b5937a1
2020/04/25 17:23:08 [INFO] ▶ Analyzing bafd22ffd1f8fbee4523a3e73438acddf5318f22dd627a85b036a6a894cf19ea
2020/04/25 17:23:08 [INFO] ▶ Analyzing 9398479ab1e980a2fdd4c3ef9028b7f61a0bbcc60f5241932a79a666780eb631
2020/04/25 17:23:08 [INFO] ▶ Analyzing edf691d398fd2cbb633623726ae334f3e91ce2986e4533d860a70cabe0231ed3
2020/04/25 17:23:09 [INFO] ▶ Image [sonatype/nexus3:3.22.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress sonatype/nexus3:3.22.1
2020-04-25T14:23:18.275Z        INFO    Need to update DB
2020-04-25T14:23:18.275Z        INFO    Downloading DB...
2020-04-25T14:23:35.060Z        INFO    Detecting RHEL/CentOS vulnerabilities...

sonatype/nexus3:3.22.1 (redhat 8.1)
===================================
Total: 216 (UNKNOWN: 0, LOW: 20, MEDIUM: 170, HIGH: 23, CRITICAL: 3)
```
