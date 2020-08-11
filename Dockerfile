FROM alpine:3.12.0
LABEL website="Secure Docker Images https://secureimages.dev"
LABEL description="We secure your business from scratch."
LABEL maintainer="hireus@secureimages.dev"

ARG NEXUS_VERSION=3.26.0-04
ARG NEXUS_CHECKSUM=f2beae514d17dfdafc45419279c5e073bbae6b20957404fa8ae1b11e8ae31de1
ARG CONTAINER_UID=2001
ARG CONTAINER_GID=2001
ARG CONTAINER_USER=nexus
ARG CONTAINER_GROUP=nexus

ENV NEXUS_HOME=/opt/sonatype/nexus \
    NEXUS_DATA=/opt/sonatype/sonatype-work/nexus3 \
    NEXUS_CONTEXT= \
    SONATYPE_DIR=/opt/sonatype \
    SONATYPE_WORK=/opt/sonatype/sonatype-work

ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk \
    PATH=${PATH}:/usr/lib/jvm/java-1.8-openjdk/bin \
    JAVA_TOOL_OPTIONS="-XX:+UnlockExperimentalVMOptions -XX:+UseCGroupMemoryLimitForHeap" \
    GLIBC_REPO=https://github.com/sgerrand/alpine-pkg-glibc \
    GLIBC_VERSION=2.32-r0

RUN set -ex ;\
    apk add libstdc++ curl ca-certificates bash ;\
    wget -q https://alpine-pkgs.sgerrand.com/sgerrand.rsa.pub -O /etc/apk/keys/sgerrand.rsa.pub ;\
    for pkg in glibc-${GLIBC_VERSION} glibc-bin-${GLIBC_VERSION} glibc-i18n-${GLIBC_VERSION}; do curl -sSL ${GLIBC_REPO}/releases/download/${GLIBC_VERSION}/${pkg}.apk -o /tmp/${pkg}.apk; done ;\
    apk add /tmp/*.apk ;\
    rm -v /tmp/*.apk ;\
    ( /usr/glibc-compat/bin/localedef --force --inputfile POSIX --charmap UTF-8 C.UTF-8 || true ) ;\
    echo "export LANG=C.UTF-8" > /etc/profile.d/locale.sh ;\
    /usr/glibc-compat/sbin/ldconfig /lib /usr/glibc-compat/lib ;\
    apk add --no-cache openjdk8-jre ;\
    java -version ;\
    sed -i s/#networkaddress.cache.ttl=-1/networkaddress.cache.ttl=10/ $JAVA_HOME/jre/lib/security/java.security ;\
    echo 'hosts: files mdns4_minimal [NOTFOUND=return] dns mdns4' >> /etc/nsswitch.conf ;\
    apk del curl glibc-i18n ;\
    rm -rf /tmp/* /var/cache/apk/*

RUN set -ex ;\
    addgroup -g ${CONTAINER_GID} ${CONTAINER_GROUP} ;\
    adduser -u ${CONTAINER_UID} -G ${CONTAINER_GROUP} -h /home/${CONTAINER_USER} -s /bin/bash -S ${CONTAINER_USER} ;\
    mkdir -p /opt/sonatype/nexus /opt/sonatype/sonatype-work/nexus3 ;\
    ln -s /opt/sonatype/sonatype-work/nexus3 /nexus-data ;\
    chown -R nexus:nexus /opt/sonatype /nexus-data ;\
    wget -P /tmp https://download.sonatype.com/nexus/3/nexus-${NEXUS_VERSION}-unix.tar.gz ;\
    echo "${NEXUS_CHECKSUM}  /tmp/nexus-${NEXUS_VERSION}-unix.tar.gz" | sha256sum -c - ;\
    tar -xvzf /tmp/nexus-${NEXUS_VERSION}-unix.tar.gz --strip-components=1 -C /opt/sonatype/nexus ;\
    rm -rf /tmp/*

USER nexus

VOLUME ["/nexus-data"]

EXPOSE 8081

CMD ["/opt/sonatype/nexus/bin/nexus","run"]
