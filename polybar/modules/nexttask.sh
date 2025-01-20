#!/bin/bash

# Fetch the first pending task's description using JSON output
task 1 export | jq -r '.[0].description'

