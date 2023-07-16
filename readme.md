# dirstack

This repo contains perl and bash scripts to allow easier migration of directories on linux. (it contains a tcsh set of aliases, too, but these do not currently work).

## Installation

```
cd ~
# skip if scripts already exists
mkdir -p scripts
cd scripts
# *note* : If scripts is a git controlled directory, use git submodule add instead of git clone
git clone git@github.com:cplager/dirstack.git

# consider adding this line to your .bashrc or .bash_aliases
. ~/scripts/dirstack/aliases.bash
```


## Commands

* `cd some/directory`
    * change to `some\directory`
* `b` or `b 3`
    * go back to previous or 3rd directory
* `li`
    * list directory stack
* `cg xyz` or `cdgr xyz`
    * go to directory which has `xyz` in name

