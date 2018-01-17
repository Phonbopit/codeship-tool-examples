#!/bin/sh

function check() {
  curl -XGET 'elasticsearch:9200'
}

check || exit 1
