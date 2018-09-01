FROM centos:7.5.1804

RUN yum install -y epel-release && \
    yum install -y \
    clang \
    gcc-c++ \
    make \
    cmake \
    curl \
    git \
    tar \
    gzip \
    sqlite3-devel \
    mpich-devel \
    python36-devel && \
    yum clean all && \
    rm -rf /var/cache/yum
