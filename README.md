# Sonatype Nexus3

Sonatype Nexus Repository Manager 3, image is based on the Alpine base image with 0 vulnerabilities.

## Current Docker image (~282MB)

Security scanning using Clair
```
clair-scanner secureimages/nexus3:3.24.0-alpine-3.12.0
2020/06/11 12:16:30 [INFO] ▶ Start clair-scanner
2020/06/11 12:16:32 [INFO] ▶ Server listening on port 9279
2020/06/11 12:16:32 [INFO] ▶ Analyzing 76de98d374759ed05698adec9aa042db7bc0f62c25fb612c0f9be1419a581421
2020/06/11 12:16:32 [INFO] ▶ Analyzing 94c59bedbc56fd57596082f78d6d7b69fc46159fe6cfd0128dc8af1ee9e3611c
2020/06/11 12:16:32 [INFO] ▶ Analyzing 6e280ba6433224e712847911af9d569807e503758cfd1bedd31bc36a85f18944
2020/06/11 12:16:33 [INFO] ▶ Image [secureimages/nexus3:3.24.0-alpine-3.12.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress secureimages/nexus3:3.24.0-alpine-3.12.0
2020-06-11T09:16:39.231Z        INFO    Need to update DB
2020-06-11T09:16:39.231Z        INFO    Downloading DB...
2020-06-11T09:16:47.238Z        INFO    Detecting Alpine vulnerabilities...

secureimages/nexus3:3.24.0-alpine-3.12.0 (alpine 3.12.0)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image (~630MB)

[https://hub.docker.com/r/sonatype/nexus3](https://hub.docker.com/r/sonatype/nexus3)
```
docker pull sonatype/nexus3:3.24.0
```

Security scanning using Clair
```
clair-scanner sonatype/nexus3:3.24.0
2020/06/11 12:16:52 [INFO] ▶ Start clair-scanner
2020/06/11 12:17:01 [INFO] ▶ Server listening on port 9279
2020/06/11 12:17:01 [INFO] ▶ Analyzing ca07ed4da8e4c5b61eb5867d57914ef95a683e7a8bc61df9f05d3b6d8a8c852b
2020/06/11 12:17:02 [INFO] ▶ Analyzing ba310aa8f832c393c77f761611f3d77621376f601d135f740864edd107c2c437
2020/06/11 12:17:02 [INFO] ▶ Analyzing dff80d60b36f5b7106ffd0213a20d98e23e052f7df8007e4344a207cb1ae47f5
2020/06/11 12:17:02 [INFO] ▶ Analyzing 12f5a938ba1eac5a4598bf48cea6b1804348466c71b0b4ce55586d62b97f4e31
2020/06/11 12:17:03 [INFO] ▶ Image [sonatype/nexus3:3.24.0] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.9.1 --no-progress sonatype/nexus3:3.24.0
2020-06-11T09:17:07.920Z        INFO    Need to update DB
2020-06-11T09:17:07.920Z        INFO    Downloading DB...
2020-06-11T09:17:23.080Z        INFO    Detecting RHEL/CentOS vulnerabilities...

sonatype/nexus3:3.24.0 (redhat 8.2)
===================================
Total: 149 (UNKNOWN: 0, LOW: 65, MEDIUM: 81, HIGH: 3, CRITICAL: 0)
```
