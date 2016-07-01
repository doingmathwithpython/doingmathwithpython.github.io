#!/bin/bash

./build.sh
make github
# Get us back to the site branch
git checkout site
