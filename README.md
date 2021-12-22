# pki-ra-deployment

## Submodules
Updating all to latest commit
`
git submodule update --init --recursive
git submodule foreach git pull origin master
git submodule update --remote --merge
`

## Running
`
./build_projects.sh
. ./start-ra.sh
`
