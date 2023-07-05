#!/usr/bin/env bats

setup() {
    . ./../ppd
}

wd="$(pwd)"
@test "ppd list" {
  ppd list | grep -P "1\) $wd"
}

@test "ppd list args" {
  ppd list 1 | grep -E "ppd list takes no arguments"
}

@test "ppd list local vars" {
  echo "$nums" | grep -E '^$'
}