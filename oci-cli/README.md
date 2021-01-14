# oci-cli-docker

Docker container with [OCI CLI](https://github.com/oracle/oci-cli) pre-installed to run the CLI in an isolated environment.

## Usage

```
$ docker run -it -v ${HOME}/.oci:/root/.oci qwinwin/oci-cli -h
```

or, override the entrypoint and run Bash in the container

```
$ docker run --rm -it -v ${HOME}/.oci:/root/.oci --entrypoint bash qwinwin/oci-cli
```
