#!/bin/bash

if [[ $UNENCRYPTED == "default" ]] ; then
  echo "Unencrypted build args are not working. UNENCRYPTED should not be default."
  exit 1
else
  echo "UNENCRYPTED has been set to $UNENCRYPTED"
fi

