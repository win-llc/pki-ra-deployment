# pki-ra-deployment

Deploys the core WIN PKI RA (Registration Authority) components using docker-compose.

## Status as of 12/24/2021
The web admin UI Service and EST Service are currently not included in the deployment.

## Installation

### Install Submodules

```bash
git submodule update --init --recursive
git submodule foreach git pull origin master
git submodule update --remote --merge
```

### Build Submodules

```bash
./build_projects.sh
```

## Running
NOTE: Be sure to append the additional '.' in order to properly set the environment variables.
```bash
. ./start-ra.sh
```

## License
[GNU](https://github.com/win-llc/pki-ra-deployment/blob/master/LICENSE)
