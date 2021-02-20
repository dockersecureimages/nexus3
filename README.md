# Sonatype Nexus3

Sonatype Nexus Repository Manager 3, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~309MB)

Security scanning using Clair
```
clair-scanner secureimages/nexus3:3.29.2-alpine-3.13.2
2021/02/20 11:10:14 [INFO] ▶ Start clair-scanner
2021/02/20 11:10:17 [INFO] ▶ Server listening on port 9279
2021/02/20 11:10:17 [INFO] ▶ Analyzing b73bac2fe5a7b9d1abcbf0138798281e20b11e59b4605b104d38e914fa35b4d2
2021/02/20 11:10:17 [INFO] ▶ Analyzing c8a1d71dd46f303d9164a4150893783b19b40c83ce473662377d034a509769a6
2021/02/20 11:10:17 [INFO] ▶ Analyzing 80ee80b46ec9e11c7d8e938c26dc9906d0c706a4d112f55a599eec90aff49a45
2021/02/20 11:10:17 [WARN] ▶ Image [secureimages/nexus3:3.29.2-alpine-3.13.2] contains 1 total vulnerabilities
2021/02/20 11:10:17 [ERRO] ▶ Image [secureimages/nexus3:3.29.2-alpine-3.13.2] contains 1 unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress secureimages/nexus3:3.29.2-alpine-3.13.2
2021-02-20T11:10:20.505Z        INFO    Need to update DB
2021-02-20T11:10:20.505Z        INFO    Downloading DB...
2021-02-20T11:10:26.220Z        INFO    Detecting Alpine vulnerabilities...
2021-02-20T11:10:26.224Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

secureimages/nexus3:3.29.2-alpine-3.13.2 (alpine 3.13.2)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~629MB)

[https://hub.docker.com/r/sonatype/nexus3](https://hub.docker.com/r/sonatype/nexus3)
```
docker pull sonatype/nexus3:3.29.2
```

Security scanning using Clair
```
clair-scanner sonatype/nexus3:3.29.2
2021/02/20 11:10:31 [INFO] ▶ Start clair-scanner
2021/02/20 11:10:41 [INFO] ▶ Server listening on port 9279
2021/02/20 11:10:41 [INFO] ▶ Analyzing eace24e1643af01fffb063b9bb829640a9d3fb194f3d50e05077d8cb58fcaee2
2021/02/20 11:10:41 [INFO] ▶ Analyzing f43e9f9faf468f9eaeb7c899a67a149d2a37f1c0160ed37ea0f92a835302db4d
2021/02/20 11:10:41 [INFO] ▶ Analyzing 8cd7dedb035b5c4f2f7cd1161d0fca4cccb0c20d761f8a20e232306e688bd594
2021/02/20 11:10:41 [INFO] ▶ Analyzing 80045be51972c09c300f2cd3bfec5c922d1a6e648948e868240a2762acf90c75
2021/02/20 11:10:42 [INFO] ▶ Image [sonatype/nexus3:3.29.2] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.16.0 --no-progress sonatype/nexus3:3.29.2
2021-02-20T11:10:45.030Z        INFO    Need to update DB
2021-02-20T11:10:45.030Z        INFO    Downloading DB...
2021-02-20T11:10:57.953Z        INFO    Detecting RHEL/CentOS vulnerabilities...
2021-02-20T11:10:57.960Z        INFO    Trivy skips scanning programming language libraries because no supported file was detected

sonatype/nexus3:3.29.2 (redhat 8.3)
===================================
Total: 168 (UNKNOWN: 0, LOW: 75, MEDIUM: 87, HIGH: 6, CRITICAL: 0)
```
