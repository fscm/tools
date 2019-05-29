# bootstrap tool

Tool to initialise an AWS S3 Remote Backend for Terraform.

## Synopsis

This script will initialise an AWS S3 remote backend with a DynamoDB table to
control state locking.

A folder with the `environment` name will be created inside the root directory
to store all of the required Terraform files. All subsequent terraform recipes
should be placed inside that folder and Terraform should be run from there.

## Getting Started

There are a couple of things needed for the script to work.

### Prerequisites

This script requires *bash* version 4.0 or above to work properly.

This script will also required the following system tools to be installed:
* basename
* cat
* cut
* date
* dirname
* grep
* make
* mkdir
* pwd
* sed
* tail
* uuencode

In adition it will also require for
[Terraform](https://www.terraform.io/intro/getting-started/install.html)
(version 0.12.0 or above) and
[AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-install.html)
to be installed.

### Usage

In order to run this script you need to provide a few options.

```
Usage: bootstrap [options] (help|init)
```

#### Script Options

* `-d <PATH>` - The project root directory (defaults to current location).
* `-n <NAME>` - *[required]* The environment name.
* `-p <PROFILE>` - *[required]* The AWS cli profile (defaults to 'default').
* `-r <REGION>` - *[required]* The AWS region (defaults to 'us-east-1').

#### Examples

The following example will Initialise an AWS S3 Remote Backend for a new
project inside the current directory:

```
bootstrap -n new_project -p my_awscli_profile -r eu-west-1 init
```

After the execution of the script a new folder called `new_project` will exist
with all of the terraform code used for the backend initialisation inside.

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
