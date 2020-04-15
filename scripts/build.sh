#!/usr/bin/env bash

# Always execute these commands before exiting
function finished {
  git checkout master
}
trap finished EXIT

# Check if currently on master branch. This is to ensure the master branch and
# the gh-pages branch are in sync.
CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
if [ "${CURRENT_BRANCH}" != "master" ]; then
  echo 'You must checkout the "master" branch in order to build!'
  exit 1
fi

# Check if there are uncommitted changes
if [[ ! -z $(git status -s) ]]; then
  echo 'There are uncommitted changes!'
  exit 1
fi

# Get current commit
CURRENT_COMMIT=$(git rev-parse --verify HEAD)

# Print commands and exit if there's an error
set -xe

# Make temporary output directory
TEMP_DIR=$(mktemp -d /tmp/output-XXXXX)

# Compile files to HTML
hugo -d "${TEMP_DIR}"

# Replace old HTML files with new ones
git checkout gh-pages
ls -I public -I resources -I themes -I CNAME | xargs rm -fr
mv -f ${TEMP_DIR}/* ./

# Commit new HTML files to gh-pages branch
git add .
git commit -m "Add compiled HTML from commit ${CURRENT_COMMIT}"

# Cleanup
rm -fr "${TEMP_DIR}"
