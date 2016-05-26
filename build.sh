#!/bin/bash

#---------------------
# Edit these variables
#---------------------
# Package name
NAME=""
# Identifier
IDENTIFIER=""
# Version
VERSION=""
# Install location
INSTALL_LOCATION=""
#--------------
# Stop editing
#--------------

#------------
# Permissions
#------------
# Set rwx for root + rx for group/other
/bin/chmod -R 755 files
# Remove ACEs
/usr/bin/xattr -rc files

#-------
# Build
#-------
/usr/bin/pkgbuild \
	--root files \
	--install-location $INSTALL_LOCATION \
	--scripts scripts/ \
	--identifier $IDENTIFIER \
	--version $VERSION \
	compiled/$NAME-$VERSION.pkg
