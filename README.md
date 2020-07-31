# Sonatype Nexus3

Sonatype Nexus Repository Manager 3, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~284MB)

Security scanning using Clair
```
clair-scanner secureimages/nexus3:3.25.1-alpine-3.12.0
2020/07/31 16:18:05 [INFO] ▶ Start clair-scanner
2020/07/31 16:18:08 [INFO] ▶ Server listening on port 9279
2020/07/31 16:18:08 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/07/31 16:18:08 [INFO] ▶ Analyzing 072f8dbb4fc1acc8aef6ee6863e6e40cc457ac8d28683443df29d1ca247b5f3a
2020/07/31 16:18:08 [INFO] ▶ Analyzing 3371e028c328ad97d1bad7e32cc5bf542f966473b2afcc4a2aaebf72483b5809
2020/07/31 16:18:09 [INFO] ▶ Image [secureimages/nexus3:3.25.1-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.1 --no-progress secureimages/nexus3:3.25.1-alpine-3.12.0
2020-07-31T13:18:19.441Z        INFO    Need to update DB
2020-07-31T13:18:19.441Z        INFO    Downloading DB...
2020-07-31T13:18:27.581Z        INFO    Detecting Alpine vulnerabilities...

secureimages/nexus3:3.25.1-alpine-3.12.0 (alpine 3.12.0)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~627MB)

[https://hub.docker.com/r/sonatype/nexus3](https://hub.docker.com/r/sonatype/nexus3)
```
docker pull sonatype/nexus3:3.25.1
```

Security scanning using Clair
```
clair-scanner sonatype/nexus3:3.25.1
2020/07/31 16:18:32 [INFO] ▶ Start clair-scanner
2020/07/31 16:18:41 [INFO] ▶ Server listening on port 9279
2020/07/31 16:18:41 [INFO] ▶ Analyzing 2a1c7d340f23e082b7944daf314140d48887c700930e1b9ec3e3a17acee062f6
2020/07/31 16:18:42 [INFO] ▶ Analyzing 9d1aa8839703f07832f4e49bae58f2e738404ffbdf9701d4f9ff7756bdc12e7c
2020/07/31 16:18:43 [INFO] ▶ Analyzing 36812ceb42137c476a0dc5b981464c92990bf75350679531bbdcec805bea7869
2020/07/31 16:18:43 [INFO] ▶ Analyzing e395202b1af358e229ba02fa55ec43bb80f3c06a54bf0c7eae1cce6e9c04ce70
2020/07/31 16:18:44 [INFO] ▶ Image [sonatype/nexus3:3.25.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.10.1 --no-progress sonatype/nexus3:3.25.1
2020-07-31T13:18:46.139Z        INFO    Need to update DB
2020-07-31T13:18:46.139Z        INFO    Downloading DB...
2020-07-31T13:19:01.156Z        INFO    Detecting RHEL/CentOS vulnerabilities...

sonatype/nexus3:3.25.1 (redhat 8.2)
===================================
Total: 166 (UNKNOWN: 0, LOW: 68, MEDIUM: 95, HIGH: 3, CRITICAL: 0)
```
