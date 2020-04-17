# Sonatype Nexus3

Sonatype Nexus Repository Manager 3, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/nexus3:3.22.1-alpine-3.11.5
2020/04/17 10:57:06 [INFO] ▶ Start clair-scanner
2020/04/17 10:57:09 [INFO] ▶ Server listening on port 9279
2020/04/17 10:57:09 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/04/17 10:57:09 [INFO] ▶ Analyzing 82f945133f735f99afe1db0efb30ecf58d4a771f5ec2fd1dcbc6908f77c38d77
2020/04/17 10:57:09 [INFO] ▶ Analyzing 492c00e250145c48747b8bce3c7e2012b67b32d144bb89e58bea23a862f56a01
2020/04/17 10:57:09 [INFO] ▶ Image [secureimages/nexus3:3.22.1-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress secureimages/nexus3:3.22.1-alpine-3.11.5
2020-04-17T07:57:14.643Z        INFO    Need to update DB
2020-04-17T07:57:14.643Z        INFO    Downloading DB...
2020-04-17T07:57:23.129Z        INFO    Detecting Alpine vulnerabilities...

secureimages/nexus3:3.22.1-alpine-3.11.5 (alpine 3.11.5)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/sonatype/nexus3](https://hub.docker.com/r/sonatype/nexus3)
```
docker pull sonatype/nexus3:3.22.1
```

Security scanning using Clair
```
clair-scanner sonatype/nexus3:3.22.1
2020/04/17 10:57:29 [INFO] ▶ Start clair-scanner
2020/04/17 10:57:55 [INFO] ▶ Server listening on port 9279
2020/04/17 10:57:55 [INFO] ▶ Analyzing 1e286011e104c5dbf4f568b4143b48892d9cd7406191824df2f1a3039b5937a1
2020/04/17 10:57:58 [INFO] ▶ Analyzing bafd22ffd1f8fbee4523a3e73438acddf5318f22dd627a85b036a6a894cf19ea
2020/04/17 10:57:58 [INFO] ▶ Analyzing 9398479ab1e980a2fdd4c3ef9028b7f61a0bbcc60f5241932a79a666780eb631
2020/04/17 10:57:58 [INFO] ▶ Analyzing edf691d398fd2cbb633623726ae334f3e91ce2986e4533d860a70cabe0231ed3
2020/04/17 10:57:59 [INFO] ▶ Image [sonatype/nexus3:3.22.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.6.0 --no-progress sonatype/nexus3:3.22.1
2020-04-17T07:58:01.728Z        INFO    Need to update DB
2020-04-17T07:58:01.728Z        INFO    Downloading DB...
2020-04-17T07:58:33.657Z        INFO    Detecting RHEL/CentOS vulnerabilities...

sonatype/nexus3:3.22.1 (redhat 8.1)
===================================
Total: 216 (UNKNOWN: 0, LOW: 35, MEDIUM: 149, HIGH: 29, CRITICAL: 3)
```
