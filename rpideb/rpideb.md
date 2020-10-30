# rpideb tool

Tool to create a Debian OS image for Raspberry Pi boards.

## Synopsis

This script will create a Debian OS image that can be burned into a SD card 
and the used as an operating system for a Raspberry Pi board.

There is also a Dockerfile that can be used instead of the script to create 
a Docker image that can then be used to build the Debian OS image for the 
Raspberry Pi board.

## Getting Started

There are a couple of things needed for the script or the Dockerfile to work.

### Prerequisites (script)

The script requires a *Debian OS* as the host system. If the host system is 
not a Debian OS then the Dockerfile approach should be used instead.

The script requires *bash* version 4.0 or above to work properly.

The script will also required the following system tools to be installed:
* basename
* date
* install
* rm
* apt-get

The script will install the rest of the required tools:
* binutils
* bzip2
* ca-certificates
* coreutils
* curl
* dbus
* debian-archive-keyring
* debootstrap
* dosfstools
* dpkg-dev
* e2fsprogs
* fdisk
* kpartx
* mount
* qemu-user-static
* wget
* zip

### Prerequisites (Dockerfile)

Docker, either the Community Edition (CE) or Enterprise Edition (EE), needs to
be installed on your local computer.

Docker installation instructions can be found
[here](https://docs.docker.com/install/).

### Usage (script)

In order to run this script you need to provide a few options.

```
Usage: rpideb [options]
```

#### Script Options

* `-a <ARCH>` - The Raspberry Pi CPU arch (defaults to 'armel').
* `-s <SUITE>` - The Debian version (defaults to 'buster').

Supported Raspberry Pi architectures:
* `armel` - for Raspberry Pi Zero, Zero W and 1.
* `armhf` - for Raspberry Pi 2.
* `arm64` - for Raspberry Pi 3 and 4.

Supported Debian versions:
* `buster` - Debian Buster 10.x

#### Examples (script)

The following example will create an image for the Raspberry Pi 2 board:
```
rpideb -a 'armhf' -s 'buster'
```

### Usage (Dockerfile)

In order to be able to run the script inside a Docker container, first a Docker
image, with that script, has to be build using the provided Dockerfile.

To build the Docker image use the following command:
```
docker image build --force-rm --no-cache --file Dockerfile --tag <USER>/<IMAGE>:<TAG> <PATH>
```

* `<USER>` - *[required]* The user that will own the container image (e.g.: "johndoe").
* `<IMAGE>` - *[required]* The container name (e.g.: "rpideb").
* `<TAG>` - *[required]* The container tag (e.g.: "latest").
* `<PATH>` - *[required]* The location of the Dockerfile folder.

The Debian OS images for the Raspberry Pi boads can the be created with the 
command:
```
docker container run --volume .:/work:rw  --env 'ARCH=<ARCH>' --env 'SUITE=<SUITE>' --privileged --rm <USER>/<IMAGE>:<TAG>
```

* `<USER>` - *[required]* The user that will own the container image (e.g.: "johndoe").
* `<IMAGE>` - *[required]* The container name (e.g.: "rpideb").
* `<TAG>` - *[required]* The container tag (e.g.: "latest").
* `<PATH>` - *[required]* The location of the Dockerfile folder.
* `<ARCH>` - The Raspberry Pi CPU arch (e.g.: "armel").
* `<SUITE>` - The debian version (e.g.: "buster").

Supported Raspberry Pi architectures:
* `armel` - for Raspberry Pi Zero, Zero W and 1.
* `armhf` - for Raspberry Pi 2.
* `arm64` - for Raspberry Pi 3 and 4.

Supported Debian versions:
* `buster` - Debian Buster 10.x

#### Examples (Dockerfile)

The following example will create a Docker image that can be used to create 
the Debian OS images for the various Raspberry Pi boards:
```
docker image build --force-rm --no-cache --file Dockerfile --tag johndoe/rpideb:latest .
```

The following command will create an image for the Raspberry Pi 2 board:
```
docker container run --volume "${PWD}":/work:rw  --env 'ARCH=armhf' --env 'SUITE=buster' --privileged --rm johndoe/rpideb:latest
```

## Contributing

1. Fork it!
2. Create your feature branch: `git checkout -b my-new-feature`
3. Commit your changes: `git commit -am 'Add some feature'`
4. Push to the branch: `git push origin my-new-feature`
5. Submit a pull request

## Versioning

This project uses [SemVer](http://semver.org/) for versioning. For the versions
available, see the [tags on this repository](https://github.com/fscm/tools/tags).

## Authors

* **Frederico Martins** - [fscm](https://github.com/fscm)

See also the list of [contributors](https://github.com/fscm/tools/contributors)
who participated in this project.

## License

This project is licensed under the MIT License - see the [LICENSE](../LICENSE)
file for details
