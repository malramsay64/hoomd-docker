hoomd-docker
============

A Docker container with a [hoomd] install that supports MPI. It is built
with the default options of

```dockerfile
ARG HOOMD_VERSION="v2.3.4"
ARG CUDA=off
ARG MPI=on
ARG TBB=off
ARG JIT=off
ARG TEST=off
ARG PYTHON=/usr/bin/python36
```

These options can be modified at build time by passing arguments to
`--build-arg` although the libraries required are currently not installed in
the container.

This is a minimal container designed to be extended on by other containers.

[hoomd]: https://glotzerlab.engin.umich.edu/hoomd-blue/
