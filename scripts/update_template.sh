#!/bin/bash

# Delete the Hugo Module cache for the current project
hugo mod clean

# Install the latest versions of all module dependencies
hugo mod get -u

# Remove unused entries in go.mod and go.sum
hugo mod tidy
