#!/bin/bash

for name in `cat /tmp/names`; do /tmp/mkuser.sh $name; done
