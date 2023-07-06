#!/usr/bin/env bats

setup() {
    . ./../ppd
}

wd="$(pwd)"
@test "ppd remove" {
  ppd add /var /tmp
  ppd remove 1
  echo "$(pwd)" | grep -E "$wd"
  ppd list | head -n 1 | grep -E "1\) /var"
  ppd list | head -n 2 | grep -E "2\) /tmp"
}

@test "ppd remove args" {
  ppd remove 1 2 | grep -E "ppd remove takes zero or one arguments"
  ppd remove 0 | grep -E "no entry 0 in stack"
  ppd remove 4 | grep -E "no entry 4 in stack"
  ppd remove -1 | grep -E "argument must be a positive number"
}

@test "ppd remove local vars" {
  echo "$PS3" | grep -E '^$'
  echo "$result" | grep -E '^$'
  echo "$index" | grep -E '^$'
}