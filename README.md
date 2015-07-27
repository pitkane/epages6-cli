epages6-cli
===========

Command line tools for epages6

## Setup

### Installer script

Just paste into your vm terminal
```
curl https://raw.githubusercontent.com/ePages-rnd/epages6-cli/master/install.pl | $PERL
```
That simple.

### Step-by-step

These tools only run on a working epages6 virtual machine.

- clone this repo in your `eproot` (`cd $EPAGES`)
- add following block at the end of your `~/.bashrc`: 
```
export EPAGES_CLI=$EPAGES/epages6-cli
chmod a+x $EPAGES_CLI/ep6-*
export PATH=$EPAGES_CLI:$PATH
```
- logout and relogin

## Content

### Perl and TLE Syntax

`ep6-tlec`

`ep6-perlc`

`ep6-perlcritic`

`ep6-organize-imports`

`ep6-find-use-problems`

`ep6-refresh-ctags`


### Database

`ep6-import-xml`

`ep6-delete-xml`

`ep6-import-hook`

`ep6-delete-hook`


### Permissions

`ep6-perm-all`

`ep6-perm-cartridges`

`ep6-perm-webroot`


### Services

`ep6-restart`

`ep6-restart-all`

`ep6-set-debug-level`
