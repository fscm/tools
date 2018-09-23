# lddcp tool

Tool to recursively search for any shared object required by an application
and to copy those shared objects into a folder respecting the original path
and type (e.g.: symbolic link or not) inside that folder.

## Synopsis

This script will search for any shared object required by an application or
program as well as for any shared objects required by those and will create a
list, to remove any duplicates, and copy them to a specified folder.

In the event of the shared object to be a symbolic link to another one the
target file will also be added to the list and copied to the destination folder.

Inside the destination folder a structure equal to the original shared objects
that will be copied will be created.

## Getting Started

There are a couple of things needed for the script to work.

### Prerequisites

This script requires *bash* version 4.0 or above to work properly.

This script will also required the following system tools to be installed:
* awk
* cp
* ldd
* readlink

### Usage

In order to run this script you need to provide a few options.

```
Usage: lddcp [options]
```

#### Script Options

* `-d <PATH>` - *[required]* Where the shared libraries will be copyed to.
* `-p <PROGRAM>` - *[required]* Program to check for shared libraries.

#### Example

The following example will check the *sh* program for shared libraries and copy
them to the */tmp/requirements* folder:

```
lddcp -p /bin/sh -d /tmp/requirements
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
