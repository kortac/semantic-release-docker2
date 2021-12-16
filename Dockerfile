FROM node:lts

RUN apt-get update

RUN apt-get install -y --no-install-recommends git-core ca-certificates

RUN npm install -g semantic-release

RUN npm install -g \
    @semantic-release/commit-analyzer \
    @semantic-release/exec \
    @semantic-release/changelog \
    @semantic-release/release-notes-generator

RUN npm install -g \
    @semantic-release/gitlab \
    @semantic-release/git \
    @semantic-release/github \
    @semantic-release/gitlab-config

RUN npm install -g \
    @semantic-release/npm \
    @semantic-release/apm \
    @semantic-release/apm-config

RUN npm install -g \
    conventional-changelog-conventionalcommits
