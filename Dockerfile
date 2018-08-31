FROM malramsay/hoomd-core

ARG PIP=18.0
ARG NUMPY=1.14.5
ARG PYTHON=/usr/bin/python36

RUN $PYTHON -m ensurepip && \
    $PYTHON -m pip install pip==${PIP} numpy==${NUMPY}
