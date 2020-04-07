# Sonatype Nexus3

Sonatype Nexus Repository Manager 3, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/nexus3:3.22.0-alpine-3.11.5
2020/04/07 18:14:06 [INFO] ▶ Start clair-scanner
2020/04/07 18:14:09 [INFO] ▶ Server listening on port 9279
2020/04/07 18:14:09 [INFO] ▶ Analyzing dac63304c60354902922613d675ec533c6e10879f72d49b7602575ae5d5f9257
2020/04/07 18:14:09 [INFO] ▶ Analyzing 7bbc3cb455c27a71429c706c6cbac7199e687bfe8c945c98d00b157148493e7f
2020/04/07 18:14:09 [INFO] ▶ Analyzing 0cbdcd8a3a803f8ca6f774d07701aea9b7cc6d79f7b6cd118fca0ae8859f99ce
2020/04/07 18:14:09 [INFO] ▶ Image [secureimages/nexus3:3.22.0-alpine-3.11.5] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.4 --no-progress secureimages/nexus3:3.22.0-alpine-3.11.5
2020-04-07T15:14:12.955Z        INFO    Need to update DB
2020-04-07T15:14:12.955Z        INFO    Downloading DB...
2020-04-07T15:14:16.674Z        INFO    Reopening DB...
2020-04-07T15:14:20.631Z        INFO    Detecting Alpine vulnerabilities...

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
2020/04/07 18:14:26 [INFO] ▶ Start clair-scanner
2020/04/07 18:14:37 [INFO] ▶ Server listening on port 9279
2020/04/07 18:14:37 [INFO] ▶ Analyzing f348effac8c4f3cc0836e0000bbf8f6ae64e3b23ceb7b0df9425b6fa51c3b451
2020/04/07 18:14:39 [INFO] ▶ Analyzing 606689fc2b317258d8cd67911b0fef78fbc30cce6115f73335fd69755715c786
2020/04/07 18:14:39 [INFO] ▶ Analyzing c6bff4d249fcc3eb957253127c489599ebc07e8f8ca269bf2e8115e0b7967f66
2020/04/07 18:14:39 [INFO] ▶ Analyzing abce40e1a55ef1d5078e5ebfa179da360ac297cad56b6b7ad15c6272e590a960
2020/04/07 18:14:40 [INFO] ▶ Image [sonatype/nexus3:3.22.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.5.4 --no-progress sonatype/nexus3:3.22.0
2020-04-07T15:14:42.528Z        INFO    Need to update DB
2020-04-07T15:14:42.528Z        INFO    Downloading DB...
2020-04-07T15:14:46.245Z        INFO    Reopening DB...
2020-04-07T15:14:59.852Z        INFO    Detecting RHEL/CentOS vulnerabilities...

sonatype/nexus3:3.22.0 (redhat 8.1)
===================================
Total: 184 (UNKNOWN: 0, LOW: 20, MEDIUM: 138, HIGH: 23, CRITICAL: 3)
```
