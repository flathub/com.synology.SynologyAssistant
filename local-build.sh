#!/usr/bin/env bash

BRANCH=test

rm -f com.synology.SynologyAssistant.flatpak
rm -rf _build ; mkdir _build
rm -rf _repo ; mkdir _repo

flatpak-builder --ccache --force-clean --default-branch=$BRANCH _build com.synology.SynologyAssistant.yaml --repo=_repo
