#!/usr/bin/env bats

setup() {
    . ./../ppd
}

wd="$(pwd)"
@test "ppd push" {
  ppd push /var /tmp
  echo "$(pwd)" | grep -E '^/tmp$'
  ppd list | head -n 1 | grep -E "1\) $wd"
  ppd list | head -n 2 | grep -E "2\) /var"
  ppd list | head -n 3 | grep -E "3\) /tmp"
  ppd push
  ppd list | head -n 4 | grep -E "3\) /tmp"
}

@test "ppd push local vars" {
  echo "$l" | grep -E '^$'
  echo "$argdir" | grep -E '^$'
}