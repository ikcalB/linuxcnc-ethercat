#! /bin/bash
# =#= tab-width: 4 =#= #########################################################
#
# FILENAME: install.sh
#
# Copyright 2015 Florian Kerle <flo.kerle@gmx.at>
# Released under the 'GNU General Public License v3'
#
# DESCRIPTION:
#	instatll linuxcnc-ethercat glue module
#
# CHANGELOG:
# ==========
# user   	| date       | changes
# ----------|------------|-----------------------------------------------------
# f.kerle	| 24.07.2015 | initial release
#
################################################################################

SCRIPTNAME=$(basename $0)
SCRIPTPATH=$(cd $(dirname $0); pwd -P)

# === MAIN === #
echo -e "\n"
echo "========================================="
echo -e "$SCRIPTNAME:	executing...\n\n"

export C_INCLUDE_PATH+=":/usr/local/include"

make clean

make all
sudo make install


echo -e "\n"
echo -e "$SCRIPTNAME:	finished"
echo "========================================="

exit
