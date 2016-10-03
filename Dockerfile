FROM nvidia/cuda:7.5-centos7

RUN yum -y update &&\
    yum -y install wget git bzip2 &&\
    yum clean all

RUN wget --quiet https://repo.continuum.io/miniconda/Miniconda3-3.16.0-Linux-x86_64.sh -O ~/miniconda.sh &&\
    bash ~/miniconda.sh -b -p /opt/conda && \
    rm ~/miniconda.sh

RUN export PATH=/opt/conda/bin:$PATH && \
    conda config --add channels glotzer &&\
    conda install -y hoomd &&\
    conda clean --all

ENV PATH /opt/conda/bin:$PATH

CMD /bin/bash


