#!/usr/bin/env bats

setup() {
    . ./../ppd
}

wd="$(pwd)"
@test "ppd help" {
  ppd --help | head -n 1 | grep -E 'Commands: '
  ppd --help | head -n 2 | tail -n 1 | grep 'list                         : List dir stack'
  ppd --help | head -n 3 | tail -n 1 | grep 'push                         : Push dir to stack'
  ppd --help | head -n 4 | tail -n 1 | grep 'pop                          : Pop dir from stack'
  ppd --help | head -n 5 | tail -n 1 | grep 'go                           : Navigate to dir'
  ppd --help | head -n 6 | tail -n 1 | grep 'add                          : Add dir to stack'
  ppd --help | head -n 7 | tail -n 1 | grep 'delete                       : Delete dir from stack'
  ppd --help | head -n 8 | tail -n 1 | grep 'clear                        : Empty the stack'
  ppd --help | head -n 9 | tail -n 1 | grep '\-h, \-\-help                   : Display this message'
  ppd --help | head -n 10 | tail -n 1 | grep '\-v, \-\-version                : Display the version of ppd'
}
