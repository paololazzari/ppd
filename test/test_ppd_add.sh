#!/usr/bin/env bats

setup() {
    . ./../ppd
}

wd="$(pwd)"
@test "ppd add" {
  ppd add /var /tmp
  echo "$(pwd)" | grep -E "$wd"
  ppd list | head -n 1 | grep -E "1\) $wd"
  ppd list | head -n 2 | tail -n 1 | grep -E "2\) /var"
  ppd list | head -n 3 | tail -n 1 | grep -E "3\) /tmp"
  ppd add
  ppd list | head -n 4 | tail -n 1 | grep -E "4\) $wd"
}

@test "ppd add local var" {
  echo "$argdir" | grep -E '^$'
}