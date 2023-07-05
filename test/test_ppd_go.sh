#!/usr/bin/env bats

setup() {
    . ./../ppd
}

wd="$(pwd)"
@test "ppd go" {
  ppd push /var /tmp
  ppd go 2
  echo "$(pwd)" | grep -E '^/var$'
}

@test "ppd go args" {
  ppd go 4 | grep -E "no entry 4 in stack"
  ppd go 0 | grep -E "no entry 0 in stack"
}

@test "ppd go local vars" {
  echo "$index" | grep -E '^$'
  echo "$nums" | grep -E '^$'
  echo "$PS3" | grep -E '^$'
  echo "$result" | grep -E '^$'
}