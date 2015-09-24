#!/bin/bash

if [ $USER = "oracle" ]; then
  ulimit -u 16384 -n 65536
fi