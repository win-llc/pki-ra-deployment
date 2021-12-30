# WIN PKI RA Full Deployment

Deploys the core WIN PKI RA (Registration Authority) components using docker-compose.

The WIN PKI RA contains tools for automating TLS Certificate issuance and management to enterprises with existing Certificate Authorities. This RA contains an ACME Server and and EST Server for issuance automation. Server owners can use these services with a client of their choosing, such as Certbot by Lets Encrypt. The API Server acts as hub for managing the RA. Authentication and end-user identities are managed by Keycloak (https://www.keycloak.org/).

## Status as of 12/24/2021
The web admin UI Service and EST Service are currently not included in the deployment.

## Installation

### Prerequisites
- docker
- docker-compose
- OpenJDK 11 JDK

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
export SERVER_FQDN=<hostname.domain>
. ./start-ra.sh
```

## License
[GNU](https://github.com/win-llc/pki-ra-deployment/blob/master/LICENSE)
