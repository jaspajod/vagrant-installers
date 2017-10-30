#!/bin/sh

# Ensure the dev tools are installed
pacman --noconfirm -Suy base-devel

# Expected file mode
chmod 755 /vagrant/package/support/package_archlinux.sh

# Call the support script directly for building since
# there is no substrate to configure
/vagrant/package/support/package_archlinux.sh ${GIT_BUILD_BRANCH:-master}

# And store our new package
mkdir -p /vagrant/pkg
cp *.xz /vagrant/pkg/