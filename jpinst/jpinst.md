# jpinst tool

Tool to install Jenkins plugins in a specific folder.

## Synopsis

This script will install Jenkins plugins and will search for any dependencies
of those plugins and install them too.

Plugins installed as dependencies will also be check for any required plugin
(as dependencies).

## Getting Started

There are a couple of things needed for the script to work.

### Prerequisites

This script requires *bash* version 4.0 or above to work properly.

This script will also required the following system tools to be installed:
* curl
* sed
* unzip

### Usage

In order to run this script you need to provide a few options.

```
Usage: jpinst [options]
```

#### Script Options

* `-d <PATH>` - *[required]* Directory where the plugins will be installed.
* `-f <FILE>` - *[required]* File with the plugins to install (one per line).

#### Examples

The following example will install the plugins listed in the `/tmp/plugins.txt`
file, and the respective dependencies, into the `/var/lib/jenkins/plugins`
folder:

```
lddcp -f /tmp/plugins.txt -d /var/lib/jenkins/plugins
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
