#!/bin/bash

hugo mod clean

# Latest development release
#hugo mod get -u ./...

# Latest official release
#hugo mod get -u

# Specific git commit
GIT_COMMIT="b811f9a"
hugo mod get github.com/wowchemy/wowchemy-hugo-modules/wowchemy@${GIT_COMMIT}
hugo mod get github.com/wowchemy/wowchemy-hugo-modules/netlify-cms-academic@${GIT_COMMIT}

hugo mod tidy
