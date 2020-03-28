# Sonatype Nexus3

Sonatype Nexus Repository Manager 3, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/nexus3:3.22.0-alpine-3.11.5
2020/03/28 15:47:38 [INFO] ▶ Start clair-scanner
2020/03/28 15:47:40 [INFO] ▶ Server listening on port 9279
2020/03/28 15:47:40 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/03/28 15:47:40 [INFO] ▶ Analyzing edd39623786e8f6845e7dac684f1687c218f9b88b0329c48111921928e6ea3bf
2020/03/28 15:47:41 [INFO] ▶ Analyzing 747fea2a8d1807115a600842724afe558db3dd650211e2d4bf330178ac3f3adc
2020/03/28 15:47:41 [INFO] ▶ Image [secureimages/nexus3:3.22.0-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress secureimages/nexus3:3.22.0-alpine-3.11.5
2020-03-28T13:47:49.053Z        INFO    Need to update DB
2020-03-28T13:47:49.053Z        INFO    Downloading DB...
2020-03-28T13:47:52.918Z        INFO    Reopening DB...
2020-03-28T13:47:57.702Z        INFO    Detecting Alpine vulnerabilities...

secureimages/nexus3:3.22.0-alpine-3.11.5 (alpine 3.11.5)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/sonatype/nexus3](https://hub.docker.com/r/sonatype/nexus3)
```
docker pull sonatype/nexus3:3.22.0
```

Security scanning using Clair
```
clair-scanner sonatype/nexus3:3.22.0
2020/03/28 15:48:02 [INFO] ▶ Start clair-scanner
2020/03/28 15:48:11 [INFO] ▶ Server listening on port 9279
2020/03/28 15:48:11 [INFO] ▶ Analyzing f348effac8c4f3cc0836e0000bbf8f6ae64e3b23ceb7b0df9425b6fa51c3b451
2020/03/28 15:48:13 [INFO] ▶ Analyzing 606689fc2b317258d8cd67911b0fef78fbc30cce6115f73335fd69755715c786
2020/03/28 15:48:13 [INFO] ▶ Analyzing c6bff4d249fcc3eb957253127c489599ebc07e8f8ca269bf2e8115e0b7967f66
2020/03/28 15:48:13 [INFO] ▶ Analyzing abce40e1a55ef1d5078e5ebfa179da360ac297cad56b6b7ad15c6272e590a960
2020/03/28 15:48:14 [INFO] ▶ Image [sonatype/nexus3:3.22.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.3 --no-progress sonatype/nexus3:3.22.0
2020-03-28T13:48:20.350Z        INFO    Need to update DB
2020-03-28T13:48:20.350Z        INFO    Downloading DB...
2020-03-28T13:48:23.703Z        INFO    Reopening DB...
2020-03-28T13:48:36.441Z        INFO    Detecting RHEL/CentOS vulnerabilities...

sonatype/nexus3:3.22.0 (redhat 8.1)
===================================
Total: 184 (UNKNOWN: 0, LOW: 19, MEDIUM: 139, HIGH: 23, CRITICAL: 3)
```
