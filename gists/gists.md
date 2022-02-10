# gists download tool

Tool to fetch all of the gists of a github user.

## Synopsis

This script will fetch all of the gists of a given by cloning them into a local
directory.

## Getting Started

There are a couple of things needed for the script to work.

### Prerequisites

Python version 3.6 or above is required for the tool to work. Python setup can
be found [here](https://www.python.org/downloads/).

No extra Python modules are required.

The `git` command tool is also required. Installation tools for `git` can be
found [here](https://git-scm.com/downloads).

### Usage

In order to run this script you need to provide a few options.

```shell
Usage: gist [options]
```

#### Script Options

* `-h` - Shows the help message and exits.
* `-d <DIRECTORY>` - Output directory.
* `-q` - Quiet mode.
* `-u <USERNAME>` - *[required]* Username.
* `-v` - Show the program version number and exits.

#### Examples

The following example will create the files in the current directory:

```shell
gists -u my_username
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
