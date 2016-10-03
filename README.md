hoomd-docker
============

A docker container with a [hoomd] install that supports
running on the GPU, assuming CUDA is installed on the host.
This uses the recommended install using `conda`.

Running
-------

To run the container with GPU acceleration use the command

    docker run -ti -v $(pwd):/srv/scratch malramsay/hoomd

which will mount the current directory at `/srv/scratch` and
open a shell in which commands can be run.

To get GPU support the `nvidia-docker` commands needs to be used in place of `docker`.

[hoomd](https://glotzerlab.engin.umich.edu/hoomd-blue/)

