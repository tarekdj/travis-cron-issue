#! /bin/sh

curl \
  -X POST \
  -H "Accept: application/vnd.github.v3+json" \
  -H "Authorization: token ${GITHUB_TOKEN}"\
  https://api.github.com/repos/${TRAVIS_REPO_SLUG}/issues \
  -d "{\"title\":\"[Travis CI] build failed\"}"
