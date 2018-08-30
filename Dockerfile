FROM centos:7

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

# Add mpi library to path
# This is the same as running `module load mpi` since the `module` command doesn't work.
ENV PATH="/usr/lib64/mpich/bin:${PATH}"
ENV LD_LIBRARY_PATH="/usr/lib64/mpich/lib"

ARG HOOMD_VERSION="v2.3.4"
RUN curl -sSLO https://glotzerlab.engin.umich.edu/Downloads/hoomd/hoomd-$HOOMD_VERSION.tar.gz && \
    tar -xzf hoomd-$HOOMD_VERSION.tar.gz -C /root && \
    cd /root/hoomd-$HOOMD_VERSION && \
    mkdir build && \
    cd build && \
    cmake ../ \
        -DENABLE_CUDA=off \
        -DENABLE_MPI=on \
        -DENABLE_TBB=off \
        -DBUILD_JIT=off \
        -DBUILD_TESTING=off \
        -DPYTHON_EXECUTABLE=/usr/bin/python3.6 && \
    make && \
    make install && \
    rm -rf /root/hoomd-$HOOMD_VERSION && \
    rm /hoomd-$HOOMD_VERSION.tar.gz
