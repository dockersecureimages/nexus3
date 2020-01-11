# Sonatype Nexus3

Sonatype Nexus Repository Manager 3, image is based on the Alpine base image with 0 vulnerabilities.

[![Docker Build Status](https://img.shields.io/docker/build/secureimages/nexus3.svg?style=flat-square)]()
[![Docker Pulls](https://img.shields.io/docker/pulls/secureimages/nexus3.svg?style=flat-square)]()
[![Docker Stars](https://img.shields.io/docker/stars/secureimages/nexus3.svg?style=flat-square)]()

## Current Docker image

Security scanning using Clair
```
clair-scanner secureimages/nexus3:3.20.1-alpine-3.10.3
2020/01/10 22:45:24 [INFO] ▶ Start clair-scanner
2020/01/10 22:45:26 [INFO] ▶ Server listening on port 9279
2020/01/10 22:45:26 [INFO] ▶ Analyzing 04e45c0111fb11f85d938ddf23db2bb1cd729651296b5a94fb167d7770267313
2020/01/10 22:45:26 [INFO] ▶ Analyzing f6928a203fb506b2856d14ba4a2d2ff02542638c4607227dedbffee3f1599845
2020/01/10 22:45:26 [INFO] ▶ Analyzing 17d87b873745b5e1641c1a77fee462fb0df14ccc76856a54d1ae5d82403c1ebd
2020/01/10 22:45:27 [INFO] ▶ Analyzing 225a6c3eeabfab9701e8930867ca4f77eb6556968f0726be4adaff2c1d04101b
2020/01/10 22:45:27 [INFO] ▶ Image [secureimages/nexus3:3.20.1-alpine-3.10.3] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.1 --no-progress secureimages/nexus3:3.20.1-alpine-3.10.3
2020-01-10T20:45:37.644Z        INFO    Need to update DB
2020-01-10T20:45:37.644Z        INFO    Downloading DB...
2020-01-10T20:45:41.084Z        INFO    Reopening DB...
2020-01-10T20:45:48.217Z        INFO    Detecting Alpine vulnerabilities...

secureimages/nexus3:3.20.1-alpine-3.10.3 (alpine 3.10.3)
========================================================
Total: 0 (UNKNOWN: 0, LOW: 0, MEDIUM: 0, HIGH: 0, CRITICAL: 0)
```

## Official Docker image

[https://hub.docker.com/r/sonatype/nexus3](https://hub.docker.com/r/sonatype/nexus3)
```
docker pull sonatype/nexus3
```

Security scanning using Clair
```
clair-scanner sonatype/nexus3:3.20.1
2020/01/10 22:28:49 [INFO] ▶ Start clair-scanner
2020/01/10 22:28:59 [INFO] ▶ Server listening on port 9279
2020/01/10 22:28:59 [INFO] ▶ Analyzing d994a52d4062d3f652cecccda1234fc5311556b8d6c384949b9249c2e5cd6ebe
2020/01/10 22:28:59 [INFO] ▶ Analyzing ae2c4fa6ee67e8c4cb5ecd615d908ec9ef79cf1304b9b0da50011abdd30faa09
2020/01/10 22:28:59 [INFO] ▶ Analyzing 23e2441db2b7d24405225a122362c8fe3da64f23e01208654603f0744e92f3b0
2020/01/10 22:28:59 [INFO] ▶ Analyzing 5d366d3d5e375161cc6194eff4a9c02e3cf33568442d8a6753b9c0f2caef82cf
2020/01/10 22:28:59 [INFO] ▶ Image [sonatype/nexus3:3.20.1] contains NO unapproved vulnerabilities
```

Security scanning using Trivy
```
docker run --rm -v /var/run/docker.sock:/var/run/docker.sock:ro aquasec/trivy:0.4.1 --no-progress sonatype/nexus3:3.20.1
2020-01-10T20:33:40.839Z        INFO    Need to update DB
2020-01-10T20:33:40.839Z        INFO    Downloading DB...
2020-01-10T20:33:43.767Z        INFO    Reopening DB...
2020-01-10T20:34:03.571Z        INFO    Detecting RHEL/CentOS vulnerabilities...

sonatype/nexus3:3.20.1 (redhat 8.1)
===================================
Total: 153 (UNKNOWN: 0, LOW: 12, MEDIUM: 120, HIGH: 18, CRITICAL: 3)

+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
|        LIBRARY         | VULNERABILITY ID | SEVERITY | INSTALLED VERSION  | FIXED VERSION |                     TITLE                      |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| avahi-libs             | CVE-2017-6519    | MEDIUM   | 0.7-19.el8         |               | avahi: Multicast DNS responds                  |
|                        |                  |          |                    |               | to unicast queries outside of                  |
|                        |                  |          |                    |               | local network                                  |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-1000845 |          |                    |               | avahi: DNS amplification                       |
|                        |                  |          |                    |               | and reflection to spoofed                      |
|                        |                  |          |                    |               | addresses                                      |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| bzip2-libs             | CVE-2019-12900   | HIGH     | 1.0.6-26.el8       |               | bzip2: out-of-bounds write in                  |
|                        |                  |          |                    |               | function BZ2_decompress                        |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| cairo                  | CVE-2018-18064   | MEDIUM   | 1.15.12-3.el8      |               | cairo: Stack-based buffer                      |
|                        |                  |          |                    |               | overflow via parsing of                        |
|                        |                  |          |                    |               | crafted WebKitGTK+ document                    |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-19876   |          |                    |               | cairo: Invalid free in                         |
|                        |                  |          |                    |               | cairo_ft_apply_variations()                    |
|                        |                  |          |                    |               | resulting in a denial of                       |
|                        |                  |          |                    |               | service                                        |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-6461    |          |                    |               | cairo: assertion problem in                    |
|                        |                  |          |                    |               | _cairo_arc_in_direction in                     |
|                        |                  |          |                    |               | cairo-arc.c                                    |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-6462    |          |                    |               | cairo: infinite loop in the                    |
|                        |                  |          |                    |               | function _arc_error_normalized                 |
|                        |                  |          |                    |               | in the file cairo-arc.c                        |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| coreutils-single       | CVE-2017-18018   | LOW      | 8.30-6.el8         |               | coreutils: race condition                      |
|                        |                  |          |                    |               | vulnerability in chown and                     |
|                        |                  |          |                    |               | chgrp                                          |
+------------------------+------------------+          +--------------------+---------------+------------------------------------------------+
| cups-libs              | CVE-2019-8675    |          | 1:2.2.6-28.el8     |               | cups: stack-buffer-overflow                    |
|                        |                  |          |                    |               | in libcups's asn1_get_type                     |
|                        |                  |          |                    |               | function                                       |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-8696    |          |                    |               | cups: stack-buffer-overflow                    |
|                        |                  |          |                    |               | in libcups's asn1_get_packed                   |
|                        |                  |          |                    |               | function                                       |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| curl                   | CVE-2019-5481    | HIGH     | 7.61.1-11.el8      |               | curl: double free due to                       |
|                        |                  |          |                    |               | subsequent call of realloc()                   |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-5482    |          |                    |               | curl: heap buffer overflow in                  |
|                        |                  |          |                    |               | function tftp_receive_packet()                 |
+                        +------------------+----------+                    +---------------+------------------------------------------------+
|                        | CVE-2019-5436    | MEDIUM   |                    |               | curl: TFTP receive                             |
|                        |                  |          |                    |               | heap buffer overflow in                        |
|                        |                  |          |                    |               | tftp_receive_packet() function                 |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| expat                  | CVE-2018-20843   | HIGH     | 2.2.5-3.el8        |               | expat: large number of colons                  |
|                        |                  |          |                    |               | in input makes parser consume                  |
|                        |                  |          |                    |               | high amount...                                 |
+                        +------------------+----------+                    +---------------+------------------------------------------------+
|                        | CVE-2019-15903   | MEDIUM   |                    |               | expat: heap-based buffer                       |
|                        |                  |          |                    |               | over-read via crafted XML                      |
|                        |                  |          |                    |               | input                                          |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| file-libs              | CVE-2019-18218   | HIGH     | 5.33-8.el8         |               | file: heap-based                               |
|                        |                  |          |                    |               | buffer overflow in                             |
|                        |                  |          |                    |               | cdf_read_property_info in                      |
|                        |                  |          |                    |               | cdf.c                                          |
+                        +------------------+----------+                    +---------------+------------------------------------------------+
|                        | CVE-2019-8904    | MEDIUM   |                    |               | file: stack-based buffer                       |
|                        |                  |          |                    |               | over-read in do_bid_note in                    |
|                        |                  |          |                    |               | readelf.c                                      |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-8905    |          |                    |               | file: stack-based buffer                       |
|                        |                  |          |                    |               | over-read in do_core_note in                   |
|                        |                  |          |                    |               | readelf.c                                      |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-8906    |          |                    |               | file: out-of-bounds read in                    |
|                        |                  |          |                    |               | do_core_note in readelf.c                      |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-8907    |          |                    |               | file: do_core_note in                          |
|                        |                  |          |                    |               | readelf.c allows remote                        |
|                        |                  |          |                    |               | attackers to cause a denial                    |
|                        |                  |          |                    |               | of...                                          |
+------------------------+------------------+          +--------------------+---------------+------------------------------------------------+
| gdb-gdbserver          | CVE-2018-14038   |          | 8.2-6.el8          |               | libbfd: remote dos via                         |
|                        |                  |          |                    |               | crafted file in function                       |
|                        |                  |          |                    |               | aout_32_swap_std_reloc_out in                  |
|                        |                  |          |                    |               | aoutx.h                                        |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-1010180 |          |                    |               | gdb: buffer overflow while                     |
|                        |                  |          |                    |               | opening an ELF for debugging                   |
|                        |                  |          |                    |               | leads to Dos,...                               |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| glib2                  | CVE-2018-16428   | HIGH     | 2.56.4-7.el8       |               | glib2: NULL pointer dereference in             |
|                        |                  |          |                    |               | g_markup_parse_context_end_parse()             |
|                        |                  |          |                    |               | function in gmarkup.c                          |
+                        +------------------+----------+                    +---------------+------------------------------------------------+
|                        | CVE-2018-16429   | MEDIUM   |                    |               | glib2: Out-of-bounds read in                   |
|                        |                  |          |                    |               | g_markup_parse_context_parse()                 |
|                        |                  |          |                    |               | in gmarkup.c                                   |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-13012   |          |                    |               | glib2: insecure permissions                    |
|                        |                  |          |                    |               | for files and directories                      |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-9633    |          |                    |               | glib:                                          |
|                        |                  |          |                    |               | g_socket_client_connected_callback             |
|                        |                  |          |                    |               | in gio/gsocketclient.c allows to               |
|                        |                  |          |                    |               | cause denial of service                        |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| glibc                  | CVE-2019-1010022 | HIGH     | 2.28-72.el8        |               | glibc: stack guard protection                  |
|                        |                  |          |                    |               | bypass                                         |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-9169    |          |                    |               | glibc: regular-expression                      |
|                        |                  |          |                    |               | match via proceed_next_node                    |
|                        |                  |          |                    |               | in posix/regexec.c leads to                    |
|                        |                  |          |                    |               | heap-based buffer over-read...                 |
+                        +------------------+----------+                    +---------------+------------------------------------------------+
|                        | CVE-2019-1010023 | MEDIUM   |                    |               | glibc: running ldd on                          |
|                        |                  |          |                    |               | malicious ELF leads to code                    |
|                        |                  |          |                    |               | execution because of...                        |
+                        +------------------+----------+                    +---------------+------------------------------------------------+
|                        | CVE-2019-19126   | LOW      |                    |               | glibc:                                         |
|                        |                  |          |                    |               | LD_PREFER_MAP_32BIT_EXEC not                   |
|                        |                  |          |                    |               | ignored in setuid binaries                     |
+------------------------+------------------+----------+                    +---------------+------------------------------------------------+
| glibc-common           | CVE-2019-1010022 | HIGH     |                    |               | glibc: stack guard protection                  |
|                        |                  |          |                    |               | bypass                                         |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-9169    |          |                    |               | glibc: regular-expression                      |
|                        |                  |          |                    |               | match via proceed_next_node                    |
|                        |                  |          |                    |               | in posix/regexec.c leads to                    |
|                        |                  |          |                    |               | heap-based buffer over-read...                 |
+                        +------------------+----------+                    +---------------+------------------------------------------------+
|                        | CVE-2019-1010023 | MEDIUM   |                    |               | glibc: running ldd on                          |
|                        |                  |          |                    |               | malicious ELF leads to code                    |
|                        |                  |          |                    |               | execution because of...                        |
+                        +------------------+----------+                    +---------------+------------------------------------------------+
|                        | CVE-2019-19126   | LOW      |                    |               | glibc:                                         |
|                        |                  |          |                    |               | LD_PREFER_MAP_32BIT_EXEC not                   |
|                        |                  |          |                    |               | ignored in setuid binaries                     |
+------------------------+------------------+----------+                    +---------------+------------------------------------------------+
| glibc-minimal-langpack | CVE-2019-1010022 | HIGH     |                    |               | glibc: stack guard protection                  |
|                        |                  |          |                    |               | bypass                                         |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-9169    |          |                    |               | glibc: regular-expression                      |
|                        |                  |          |                    |               | match via proceed_next_node                    |
|                        |                  |          |                    |               | in posix/regexec.c leads to                    |
|                        |                  |          |                    |               | heap-based buffer over-read...                 |
+                        +------------------+----------+                    +---------------+------------------------------------------------+
|                        | CVE-2019-1010023 | MEDIUM   |                    |               | glibc: running ldd on                          |
|                        |                  |          |                    |               | malicious ELF leads to code                    |
|                        |                  |          |                    |               | execution because of...                        |
+                        +------------------+----------+                    +---------------+------------------------------------------------+
|                        | CVE-2019-19126   | LOW      |                    |               | glibc:                                         |
|                        |                  |          |                    |               | LD_PREFER_MAP_32BIT_EXEC not                   |
|                        |                  |          |                    |               | ignored in setuid binaries                     |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| gnupg2                 | CVE-2018-1000858 | MEDIUM   | 2.2.9-1.el8        |               | gnupg2: Cross site                             |
|                        |                  |          |                    |               | request forgery in dirmngr                     |
|                        |                  |          |                    |               | resulting in an information                    |
|                        |                  |          |                    |               | disclosure...                                  |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-13050   |          |                    |               | GnuPG: interaction between the                 |
|                        |                  |          |                    |               | sks-keyserver code and GnuPG                   |
|                        |                  |          |                    |               | allows for a Certificate...                    |
+------------------------+------------------+          +--------------------+---------------+------------------------------------------------+
| jasper-libs            | CVE-2017-13745   |          | 2.0.14-4.el8       |               | jasper: reachable abort in                     |
|                        |                  |          |                    |               | jpc_dec_process_sot()                          |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-18873   |          |                    |               | jasper:  NULL pointer                          |
|                        |                  |          |                    |               | dereference in ras_putdatastd                  |
|                        |                  |          |                    |               | function                                       |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-19139   |          |                    |               | jasper: memory leak in                         |
|                        |                  |          |                    |               | jas_malloc.c when called from                  |
|                        |                  |          |                    |               | jpc_unk_getparms in jpc_cs.c                   |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-19539   |          |                    |               | jasper: access violation                       |
|                        |                  |          |                    |               | in jas_image_readcmpt in                       |
|                        |                  |          |                    |               | libjasper/base/jas_image.c                     |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-19540   |          |                    |               | jasper: heap-based buffer                      |
|                        |                  |          |                    |               | overflow of size 1 in                          |
|                        |                  |          |                    |               | jas_icctxtdesc_input in                        |
|                        |                  |          |                    |               | libjasper/base/jas_icc.c                       |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-19541   |          |                    |               | jasper: heap-based buffer                      |
|                        |                  |          |                    |               | over-read of size 8 in                         |
|                        |                  |          |                    |               | jas_image_depalettize in                       |
|                        |                  |          |                    |               | libjasper/base/jas_image.c                     |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-19542   |          |                    |               | jasper: invalid access                         |
|                        |                  |          |                    |               | in  jp2_decode in                              |
|                        |                  |          |                    |               | libjasper/jp2/jp2_dec.c                        |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-19543   |          |                    |               | jasper: heap-based                             |
|                        |                  |          |                    |               | buffer over-read of                            |
|                        |                  |          |                    |               | size 8 in jp2_decode in                        |
|                        |                  |          |                    |               | libjasper/jp2/jp2_dec.c                        |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-9055    |          |                    |               | jasper: reachable assertion in                 |
|                        |                  |          |                    |               | jpc_firstone() in jpc_math.c                   |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-9154    |          |                    |               | jasper: reachable abort in                     |
|                        |                  |          |                    |               | jpc_dec_process_sot()                          |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-9252    |          |                    |               | jasper: reachable assertion                    |
|                        |                  |          |                    |               | in jpc_abstorelstepsize() in                   |
|                        |                  |          |                    |               | jpc_enc.c                                      |
+------------------------+------------------+          +--------------------+---------------+------------------------------------------------+
| krb5-libs              | CVE-2018-5709    |          | 1.17-9.el8         |               | krb5: integer overflow                         |
|                        |                  |          |                    |               | in dbentry->n_key_data in                      |
|                        |                  |          |                    |               | kadmin/dbutil/dump.c                           |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-5710    |          |                    |               | krb5: null pointer deference                   |
|                        |                  |          |                    |               | in strlen function in                          |
|                        |                  |          |                    |               | plugins/kdb/ldap/libkdb_ldap/ldap_principal2.c |
+------------------------+------------------+          +--------------------+---------------+------------------------------------------------+
| libarchive             | CVE-2017-14166   |          | 3.3.2-7.el8        |               | libarchive: Heap-based                         |
|                        |                  |          |                    |               | buffer over-read in the atol8                  |
|                        |                  |          |                    |               | function                                       |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2017-14501   |          |                    |               | libarchive: Out-of-bounds read                 |
|                        |                  |          |                    |               | in parse_file_info                             |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2017-14502   |          |                    |               | libarchive: Off-by-one error                   |
|                        |                  |          |                    |               | in the read_header function                    |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-1000879 |          |                    |               | libarchive: NULL pointer                       |
|                        |                  |          |                    |               | dereference in ACL parser                      |
|                        |                  |          |                    |               | resulting in a denial of...                    |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-1000880 |          |                    |               | libarchive: Improper input                     |
|                        |                  |          |                    |               | validation in WARC parser                      |
|                        |                  |          |                    |               | resulting in a denial of...                    |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-18408   |          |                    |               | libarchive: use-after-free in                  |
|                        |                  |          |                    |               | archive_read_format_rar_read_data              |
|                        |                  |          |                    |               | when there is an error in the                  |
|                        |                  |          |                    |               | decompression...                               |
+------------------------+------------------+          +--------------------+---------------+------------------------------------------------+
| libcom_err             | CVE-2019-5094    |          | 1.44.6-3.el8       |               | e2fsprogs: crafted                             |
|                        |                  |          |                    |               | ext4 partition leads to                        |
|                        |                  |          |                    |               | out-of-bounds write                            |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| libcurl                | CVE-2019-5481    | HIGH     | 7.61.1-11.el8      |               | curl: double free due to                       |
|                        |                  |          |                    |               | subsequent call of realloc()                   |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-5482    |          |                    |               | curl: heap buffer overflow in                  |
|                        |                  |          |                    |               | function tftp_receive_packet()                 |
+                        +------------------+----------+                    +---------------+------------------------------------------------+
|                        | CVE-2019-5436    | MEDIUM   |                    |               | curl: TFTP receive                             |
|                        |                  |          |                    |               | heap buffer overflow in                        |
|                        |                  |          |                    |               | tftp_receive_packet() function                 |
+------------------------+------------------+          +--------------------+---------------+------------------------------------------------+
| libgcc                 | CVE-2018-20657   |          | 8.3.1-4.5.el8      |               | libiberty: Memory leak in                      |
|                        |                  |          |                    |               | demangle_template function                     |
|                        |                  |          |                    |               | resulting in a denial of                       |
|                        |                  |          |                    |               | service...                                     |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-20673   |          |                    |               | libiberty: Integer overflow in                 |
|                        |                  |          |                    |               | demangle_template() function                   |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-14250   |          |                    |               | binutils: integer overflow in                  |
|                        |                  |          |                    |               | simple-object-elf.c leads to a                 |
|                        |                  |          |                    |               | heap-based buffer overflow                     |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-15847   |          |                    |               | gcc: POWER9 "DARN" RNG                         |
|                        |                  |          |                    |               | intrinsic produces repeated                    |
|                        |                  |          |                    |               | output                                         |
+------------------------+------------------+          +--------------------+---------------+------------------------------------------------+
| libgcrypt              | CVE-2019-12904   |          | 1.8.3-4.el8        |               | Libgcrypt: physical addresses                  |
|                        |                  |          |                    |               | being available to other                       |
|                        |                  |          |                    |               | processes leads to a                           |
|                        |                  |          |                    |               | flush-and-reload...                            |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-13627   |          |                    |               | libgcrypt: ECDSA timing                        |
|                        |                  |          |                    |               | attack in the libgcrypt20                      |
|                        |                  |          |                    |               | cryptographic library                          |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| libidn2                | CVE-2019-18224   | HIGH     | 2.2.0-1.el8        |               | libidn2: heap-based buffer                     |
|                        |                  |          |                    |               | overflow in idn2_to_ascii_4i                   |
|                        |                  |          |                    |               | in lib/lookup.c                                |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| libjpeg-turbo          | CVE-2019-2201    | CRITICAL | 1.5.3-10.el8       |               | libjpeg-turbo: several integer                 |
|                        |                  |          |                    |               | overflows and subsequent                       |
|                        |                  |          |                    |               | segfaults when attempting                      |
|                        |                  |          |                    |               | to compress/decompress                         |
|                        |                  |          |                    |               | gigapixel...                                   |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| libpng                 | CVE-2019-7317    | LOW      | 2:1.6.34-5.el8     |               | libpng: use-after-free in                      |
|                        |                  |          |                    |               | png_image_free in png.c                        |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| libssh                 | CVE-2019-14889   | CRITICAL | 0.9.0-4.el8        |               | libssh: unsanitized location                   |
|                        |                  |          |                    |               | in scp could lead to unwanted                  |
|                        |                  |          |                    |               | command execution                              |
+------------------------+                  +          +                    +---------------+                                                +
| libssh-config          |                  |          |                    |               |                                                |
|                        |                  |          |                    |               |                                                |
|                        |                  |          |                    |               |                                                |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| libstdc++              | CVE-2018-20657   | MEDIUM   | 8.3.1-4.5.el8      |               | libiberty: Memory leak in                      |
|                        |                  |          |                    |               | demangle_template function                     |
|                        |                  |          |                    |               | resulting in a denial of                       |
|                        |                  |          |                    |               | service...                                     |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-20673   |          |                    |               | libiberty: Integer overflow in                 |
|                        |                  |          |                    |               | demangle_template() function                   |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-14250   |          |                    |               | binutils: integer overflow in                  |
|                        |                  |          |                    |               | simple-object-elf.c leads to a                 |
|                        |                  |          |                    |               | heap-based buffer overflow                     |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-15847   |          |                    |               | gcc: POWER9 "DARN" RNG                         |
|                        |                  |          |                    |               | intrinsic produces repeated                    |
|                        |                  |          |                    |               | output                                         |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| libtasn1               | CVE-2018-1000654 | HIGH     | 4.13-3.el8         |               | libtasn1: Infinite loop in                     |
|                        |                  |          |                    |               | _asn1_expand_object_id(ptree)                  |
|                        |                  |          |                    |               | leads to memory exhaustion                     |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| libtiff                | CVE-2017-17095   | MEDIUM   | 4.0.9-15.el8       |               | libtiff: Heap-based buffer                     |
|                        |                  |          |                    |               | overflow in tools/pal2rgb.c                    |
|                        |                  |          |                    |               | can lead to denial of                          |
|                        |                  |          |                    |               | service...                                     |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-10779   |          |                    |               | libtiff: heap-based buffer                     |
|                        |                  |          |                    |               | over-read in TIFFWriteScanline                 |
|                        |                  |          |                    |               | function in tif_write.c                        |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-10801   |          |                    |               | libtiff: memory leak in                        |
|                        |                  |          |                    |               | bmp2tiff tool                                  |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-15209   |          |                    |               | libtiff: Heap-based                            |
|                        |                  |          |                    |               | buffer overflow in                             |
|                        |                  |          |                    |               | ChopUpSingleUncompressedStrip                  |
|                        |                  |          |                    |               | in tif_dirread.c                               |
+                        +------------------+          +                    +---------------+                                                +
|                        | CVE-2018-16335   |          |                    |               |                                                |
|                        |                  |          |                    |               |                                                |
|                        |                  |          |                    |               |                                                |
|                        |                  |          |                    |               |                                                |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-17101   |          |                    |               | libtiff: Two out-of-bounds                     |
|                        |                  |          |                    |               | writes in cpTags in                            |
|                        |                  |          |                    |               | tools/tiff2bw.c and                            |
|                        |                  |          |                    |               | tools/pal2rgb.c                                |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-19210   |          |                    |               | libtiff: NULL pointer                          |
|                        |                  |          |                    |               | dereference in                                 |
|                        |                  |          |                    |               | TIFFWriteDirectorySec function                 |
|                        |                  |          |                    |               | in tif_dirwrite.c                              |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-5360    |          |                    |               | LibTIFF: heap-based buffer                     |
|                        |                  |          |                    |               | over-read in the ReadTIFFImage                 |
|                        |                  |          |                    |               | function in coders/tiff.c                      |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-14973   |          |                    |               | libtiff: integer overflow                      |
|                        |                  |          |                    |               | in _TIFFCheckMalloc and                        |
|                        |                  |          |                    |               | _TIFFCheckRealloc in tif_aux.c                 |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-17546   |          |                    |               | libtiff: integer overflow                      |
|                        |                  |          |                    |               | leading to heap-based buffer                   |
|                        |                  |          |                    |               | overflow in tif_getimage.c                     |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-6128    |          |                    |               | libtiff: memory leak in                        |
|                        |                  |          |                    |               | TIFFFdOpen function in                         |
|                        |                  |          |                    |               | tif_unix.c when using pal2rgb                  |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-7663    |          |                    |               | libtiff: integer overflow                      |
|                        |                  |          |                    |               | in libtiff/tif_dirwrite.c                      |
|                        |                  |          |                    |               | resulting in an invalid                        |
|                        |                  |          |                    |               | pointer dereference                            |
+------------------------+------------------+          +--------------------+---------------+------------------------------------------------+
| libxml2                | CVE-2018-14404   |          | 2.9.7-5.el8        |               | libxml2: NULL pointer                          |
|                        |                  |          |                    |               | dereference in                                 |
|                        |                  |          |                    |               | xpath.c:xmlXPathCompOpEval()                   |
|                        |                  |          |                    |               | can allow attackers to cause                   |
|                        |                  |          |                    |               | a...                                           |
+                        +------------------+----------+                    +---------------+------------------------------------------------+
|                        | CVE-2018-9251    | LOW      |                    |               | libxml2: infinite loop in                      |
|                        |                  |          |                    |               | xz_decomp function in xzlib.c                  |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| ncurses-base           | CVE-2018-19211   | MEDIUM   | 6.1-7.20180224.el8 |               | ncurses: Null pointer                          |
|                        |                  |          |                    |               | dereference at function                        |
|                        |                  |          |                    |               | _nc_parse_entry in                             |
|                        |                  |          |                    |               | parse_entry.c                                  |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-19217   |          |                    |               | ncurses: Null pointer                          |
|                        |                  |          |                    |               | dereference at function                        |
|                        |                  |          |                    |               | _nc_name_match                                 |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-17594   |          |                    |               | ncurses: heap-based buffer                     |
|                        |                  |          |                    |               | overflow in the _nc_find_entry                 |
|                        |                  |          |                    |               | function in tinfo/comp_hash.c                  |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-17595   |          |                    |               | ncurses: heap-based buffer                     |
|                        |                  |          |                    |               | overflow in the fmt_entry                      |
|                        |                  |          |                    |               | function in tinfo/comp_hash.c                  |
+------------------------+------------------+          +                    +---------------+------------------------------------------------+
| ncurses-libs           | CVE-2018-19211   |          |                    |               | ncurses: Null pointer                          |
|                        |                  |          |                    |               | dereference at function                        |
|                        |                  |          |                    |               | _nc_parse_entry in                             |
|                        |                  |          |                    |               | parse_entry.c                                  |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-19217   |          |                    |               | ncurses: Null pointer                          |
|                        |                  |          |                    |               | dereference at function                        |
|                        |                  |          |                    |               | _nc_name_match                                 |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-17594   |          |                    |               | ncurses: heap-based buffer                     |
|                        |                  |          |                    |               | overflow in the _nc_find_entry                 |
|                        |                  |          |                    |               | function in tinfo/comp_hash.c                  |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-17595   |          |                    |               | ncurses: heap-based buffer                     |
|                        |                  |          |                    |               | overflow in the fmt_entry                      |
|                        |                  |          |                    |               | function in tinfo/comp_hash.c                  |
+------------------------+------------------+          +--------------------+---------------+------------------------------------------------+
| openldap               | CVE-2019-13565   |          | 2.4.46-10.el8      |               | openldap: ACL restrictions                     |
|                        |                  |          |                    |               | bypass due to sasl_ssf value                   |
|                        |                  |          |                    |               | being set permanently                          |
+                        +------------------+----------+                    +---------------+------------------------------------------------+
|                        | CVE-2019-13057   | LOW      |                    |               | openldap: Information                          |
|                        |                  |          |                    |               | disclosure issue in slapd                      |
|                        |                  |          |                    |               | component                                      |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| openssl-libs           | CVE-2019-1549    | MEDIUM   | 1:1.1.1c-2.el8     |               | openssl: information                           |
|                        |                  |          |                    |               | disclosure in fork()                           |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-1551    |          |                    |               | openssl: Integer overflow in                   |
|                        |                  |          |                    |               | RSAZ modular exponentiation on                 |
|                        |                  |          |                    |               | x86_64                                         |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-1563    |          |                    |               | openssl: information                           |
|                        |                  |          |                    |               | disclosure in PKCS7_dataDecode                 |
|                        |                  |          |                    |               | and CMS_decrypt_set1_pkey                      |
+                        +------------------+----------+                    +---------------+------------------------------------------------+
|                        | CVE-2019-1547    | LOW      |                    |               | openssl: side-channel weak                     |
|                        |                  |          |                    |               | encryption vulnerability                       |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| platform-python        | CVE-2018-20852   | MEDIUM   | 3.6.8-15.1.el8     |               | python: Cookie domain check                    |
|                        |                  |          |                    |               | returns incorrect results                      |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-16056   |          |                    |               | python: email.utils.parseaddr                  |
|                        |                  |          |                    |               | wrongly parses email addresses                 |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-18348   |          |                    |               | python: CRLF injection via the                 |
|                        |                  |          |                    |               | host part of the url passed                    |
|                        |                  |          |                    |               | to...                                          |
+------------------------+------------------+          +--------------------+---------------+------------------------------------------------+
| platform-python-pip    | CVE-2018-18074   |          | 9.0.3-15.el8       |               | python-requests: Redirect from                 |
|                        |                  |          |                    |               | HTTPS to HTTP does not remove                  |
|                        |                  |          |                    |               | Authorization header                           |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-20060   |          |                    |               | python-urllib3: Cross-host                     |
|                        |                  |          |                    |               | redirect does not remove                       |
|                        |                  |          |                    |               | Authorization header allow for                 |
|                        |                  |          |                    |               | credential exposure...                         |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-11236   |          |                    |               | python-urllib3: CRLF injection                 |
|                        |                  |          |                    |               | due to not encoding the '\r\n'                 |
|                        |                  |          |                    |               | sequence leading to...                         |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-11324   |          |                    |               | python-urllib3: Certification                  |
|                        |                  |          |                    |               | mishandle when error should be                 |
|                        |                  |          |                    |               | thrown                                         |
+------------------------+------------------+          +--------------------+---------------+------------------------------------------------+
| procps-ng              | CVE-2018-1121    |          | 3.3.15-1.el8       |               | procps-ng, procps: process                     |
|                        |                  |          |                    |               | hiding through race condition                  |
|                        |                  |          |                    |               | enumerating /proc                              |
+------------------------+------------------+          +--------------------+---------------+------------------------------------------------+
| python3-libs           | CVE-2018-20852   |          | 3.6.8-15.1.el8     |               | python: Cookie domain check                    |
|                        |                  |          |                    |               | returns incorrect results                      |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-16056   |          |                    |               | python: email.utils.parseaddr                  |
|                        |                  |          |                    |               | wrongly parses email addresses                 |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-18348   |          |                    |               | python: CRLF injection via the                 |
|                        |                  |          |                    |               | host part of the url passed                    |
|                        |                  |          |                    |               | to...                                          |
+------------------------+------------------+          +--------------------+---------------+------------------------------------------------+
| python3-libxml2        | CVE-2018-14404   |          | 2.9.7-5.el8        |               | libxml2: NULL pointer                          |
|                        |                  |          |                    |               | dereference in                                 |
|                        |                  |          |                    |               | xpath.c:xmlXPathCompOpEval()                   |
|                        |                  |          |                    |               | can allow attackers to cause                   |
|                        |                  |          |                    |               | a...                                           |
+                        +------------------+----------+                    +---------------+------------------------------------------------+
|                        | CVE-2018-9251    | LOW      |                    |               | libxml2: infinite loop in                      |
|                        |                  |          |                    |               | xz_decomp function in xzlib.c                  |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| python3-pip-wheel      | CVE-2018-18074   | MEDIUM   | 9.0.3-15.el8       |               | python-requests: Redirect from                 |
|                        |                  |          |                    |               | HTTPS to HTTP does not remove                  |
|                        |                  |          |                    |               | Authorization header                           |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2018-20060   |          |                    |               | python-urllib3: Cross-host                     |
|                        |                  |          |                    |               | redirect does not remove                       |
|                        |                  |          |                    |               | Authorization header allow for                 |
|                        |                  |          |                    |               | credential exposure...                         |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-11236   |          |                    |               | python-urllib3: CRLF injection                 |
|                        |                  |          |                    |               | due to not encoding the '\r\n'                 |
|                        |                  |          |                    |               | sequence leading to...                         |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-11324   |          |                    |               | python-urllib3: Certification                  |
|                        |                  |          |                    |               | mishandle when error should be                 |
|                        |                  |          |                    |               | thrown                                         |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| sqlite-libs            | CVE-2019-19317   | HIGH     | 3.26.0-3.el8       |               | sqlite: omits bits from the                    |
|                        |                  |          |                    |               | colUsed bitmask in the case of                 |
|                        |                  |          |                    |               | a...                                           |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-8457    |          |                    |               | sqlite: heap out-of-bound read                 |
|                        |                  |          |                    |               | in function rtreenode()                        |
+                        +------------------+----------+                    +---------------+------------------------------------------------+
|                        | CVE-2019-13734   | MEDIUM   |                    |               | sqlite: fts3: improve shadow                   |
|                        |                  |          |                    |               | table corruption detection                     |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-13750   |          |                    |               | sqlite: dropping of shadow                     |
|                        |                  |          |                    |               | tables not restricted in                       |
|                        |                  |          |                    |               | defensive mode                                 |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-13751   |          |                    |               | sqlite: fts3: improve                          |
|                        |                  |          |                    |               | detection of corrupted records                 |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-13752   |          |                    |               | sqlite: fts3: improve shadow                   |
|                        |                  |          |                    |               | table corruption detection                     |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-13753   |          |                    |               | sqlite: fts3: incorrectly                      |
|                        |                  |          |                    |               | removed corruption check                       |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-16168   |          |                    |               | sqlite: division by zero in                    |
|                        |                  |          |                    |               | whereLoopAddBtreeIndex in                      |
|                        |                  |          |                    |               | sqlite3.c                                      |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-19242   |          |                    |               | sqlite: SQL injection in                       |
|                        |                  |          |                    |               | sqlite3ExprCodeTarget in                       |
|                        |                  |          |                    |               | expr.c                                         |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-19880   |          |                    |               | sqlite: invalid                                |
|                        |                  |          |                    |               | pointer dereference in                         |
|                        |                  |          |                    |               | exprListAppendList in window.c                 |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-5018    |          |                    |               | sqlite: use-after-free in                      |
|                        |                  |          |                    |               | window function leading to                     |
|                        |                  |          |                    |               | remote code execution                          |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-5827    |          |                    |               | chromium-browser:                              |
|                        |                  |          |                    |               | out-of-bounds access in SQLite                 |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-9936    |          |                    |               | sqlite: heap-based buffer                      |
|                        |                  |          |                    |               | over-read in function                          |
|                        |                  |          |                    |               | fts5HashEntrySort in sqlite3.c                 |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-9937    |          |                    |               | sqlite: null-pointer                           |
|                        |                  |          |                    |               | dereference in function                        |
|                        |                  |          |                    |               | fts5ChunkIterate in sqlite3.c                  |
+                        +------------------+----------+                    +---------------+------------------------------------------------+
|                        | CVE-2019-19645   | LOW      |                    |               | sqlite: infinite recursion                     |
|                        |                  |          |                    |               | via certain types of                           |
|                        |                  |          |                    |               | self-referential views in                      |
|                        |                  |          |                    |               | conjunction with...                            |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+
| systemd                | CVE-2018-20839   | MEDIUM   | 239-18.el8_1.1     |               | systemd: mishandling of the                    |
|                        |                  |          |                    |               | current keyboard mode check                    |
|                        |                  |          |                    |               | leading to passwords being...                  |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-3842    |          |                    |               | systemd: Spoofing of                           |
|                        |                  |          |                    |               | XDG_SEAT allows for actions                    |
|                        |                  |          |                    |               | to be checked against                          |
|                        |                  |          |                    |               | "allow_active"...                              |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-3843    |          |                    |               | systemd: services with                         |
|                        |                  |          |                    |               | DynamicUser can create                         |
|                        |                  |          |                    |               | SUID/SGID binaries                             |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-3844    |          |                    |               | systemd: services with                         |
|                        |                  |          |                    |               | DynamicUser can get new                        |
|                        |                  |          |                    |               | privileges and create SGID                     |
|                        |                  |          |                    |               | binaries...                                    |
+------------------------+------------------+          +                    +---------------+------------------------------------------------+
| systemd-libs           | CVE-2018-20839   |          |                    |               | systemd: mishandling of the                    |
|                        |                  |          |                    |               | current keyboard mode check                    |
|                        |                  |          |                    |               | leading to passwords being...                  |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-3842    |          |                    |               | systemd: Spoofing of                           |
|                        |                  |          |                    |               | XDG_SEAT allows for actions                    |
|                        |                  |          |                    |               | to be checked against                          |
|                        |                  |          |                    |               | "allow_active"...                              |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-3843    |          |                    |               | systemd: services with                         |
|                        |                  |          |                    |               | DynamicUser can create                         |
|                        |                  |          |                    |               | SUID/SGID binaries                             |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-3844    |          |                    |               | systemd: services with                         |
|                        |                  |          |                    |               | DynamicUser can get new                        |
|                        |                  |          |                    |               | privileges and create SGID                     |
|                        |                  |          |                    |               | binaries...                                    |
+------------------------+------------------+          +                    +---------------+------------------------------------------------+
| systemd-pam            | CVE-2018-20839   |          |                    |               | systemd: mishandling of the                    |
|                        |                  |          |                    |               | current keyboard mode check                    |
|                        |                  |          |                    |               | leading to passwords being...                  |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-3842    |          |                    |               | systemd: Spoofing of                           |
|                        |                  |          |                    |               | XDG_SEAT allows for actions                    |
|                        |                  |          |                    |               | to be checked against                          |
|                        |                  |          |                    |               | "allow_active"...                              |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-3843    |          |                    |               | systemd: services with                         |
|                        |                  |          |                    |               | DynamicUser can create                         |
|                        |                  |          |                    |               | SUID/SGID binaries                             |
+                        +------------------+          +                    +---------------+------------------------------------------------+
|                        | CVE-2019-3844    |          |                    |               | systemd: services with                         |
|                        |                  |          |                    |               | DynamicUser can get new                        |
|                        |                  |          |                    |               | privileges and create SGID                     |
|                        |                  |          |                    |               | binaries...                                    |
+------------------------+------------------+          +--------------------+---------------+------------------------------------------------+
| tar                    | CVE-2019-9923    |          | 2:1.30-4.el8       |               | tar: null-pointer dereference                  |
|                        |                  |          |                    |               | in pax_decode_header in                        |
|                        |                  |          |                    |               | sparse.c                                       |
+------------------------+------------------+          +--------------------+---------------+------------------------------------------------+
| vim-minimal            | CVE-2018-20786   |          | 2:8.0.1763-13.el8  |               | libvterm: NULL                                 |
|                        |                  |          |                    |               | pointer dereference in                         |
|                        |                  |          |                    |               | vterm_screen_set_callbacks                     |
+------------------------+------------------+----------+--------------------+---------------+------------------------------------------------+

```
