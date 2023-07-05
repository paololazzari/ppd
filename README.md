# ppd

ppd is a pushd/popd alternative written in bash

## Usage

Setup:

```bash
root:@/home $ . /usr/local/bin/ppd
```

Usage:

```bash
# list stack
root:@/home $ ppd list
1) /home

# push directories to stack
root:@/home $ ppd push /var /tmp
root:@/tmp  $ ppd list
1) /home
2) /var
3) /tmp

# pop directory from stack
root:@/tmp  $ ppd pop
root:@/var  $ ppd list
1) /home
2) /var

# go to directory in stack
root:@/var  $ ppd go 1
root:@/home $ ppd list
1) /home
2) /var

# add directory to stack
root:@/home $ ppd add /tmp
root:@/home $ ppd list
1) /home
2) /var
3) /tmp

# remove directory from stack
root:@/home $ ppd remove 1
root:@/home $ ppd list
1) /var
2) /tmp

# clear stack
root:@/home $ ppd clear
root:@/home $ ppd list
directory stack empty
```

## Installation

```bash
$ curl -O https://raw.githubusercontent.com/paololazzari/ppd/master/ppd
$ cp ppd /usr/local/bin/ppd
$ . /usr/local/bin/ppd
```

consider adding the last command to your $HOME/.bashrc