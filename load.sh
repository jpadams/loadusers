#!/bin/bash

for name in `cat /tmp/loadusers/names`; do /tmp/loadusers/mkuser.sh $name; done
