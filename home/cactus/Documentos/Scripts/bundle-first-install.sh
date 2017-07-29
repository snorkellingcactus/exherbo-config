#!/bin/sh

# https://stackoverflow.com/questions/21384664/how-to-uninstall-all-gems-installed-using-bundle-install
# install gems to project_root/vendor/bundle

unset ARCH

bundle install --path vendor/bundle --without test
