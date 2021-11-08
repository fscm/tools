# iana-etc tool

Tool to create the `/etc/protocols` and `/etc/services` files.

## Synopsis

This script will fetch the required information from the IANA's website, parse
that information and then create the two files.

## Getting Started

There are a couple of things needed for the script to work.

### Prerequisites

Python version 3.6 or above is required for the tool to work. Python setup can
be found [here](https://www.python.org/downloads/).

No extra Python modules are required.

### Usage

In order to run this script you need to provide a few options.

```shell
Usage: iana-etc [options]
```

#### Script Options

* `-h` - Shows the help message and exits.
* `-d <DIRECTORY>` - Output directory.
* `-v` - Show the program version number and exits.

#### Examples

The following example will create the files in the current directory:

```shell
iana-etc
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
