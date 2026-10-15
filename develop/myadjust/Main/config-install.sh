#!/usr/bin/env bash


################################################################################
### Head: Note
##

##
## ## Link
##
## * https://github.com/samwhelp/skel-project-plan/blob/master/develop/sh/project-helper/basic/helper/bin/prepare.sh
##

##
### Tail: Note
################################################################################


################################################################################
### Head: Bash
##

set -e						## exit on error
set -o pipefail				## exit on pipeline error
set -u						## treat unset variable as error

##
### Tail: Bash
################################################################################


################################################################################
### Head: Init
##

REF_CMD_FILE_NAME="$(basename "${0}")"
REF_BASE_DIR_PATH="$(cd -- "$(dirname -- "${0}")" ; pwd)"
#REF_INIT_DIR_PATH="${REF_BASE_DIR_PATH}/../ext"
#. "${REF_INIT_DIR_PATH}/init.sh"

##
### Tail: Init
################################################################################


################################################################################
### Head: Util / Debug
##

util_error_echo () {

	echo "${@}" 1>&2

}

##
### Head: Util / Debug
################################################################################


################################################################################
### Head: Util / Copy
##

util_copy_from_srcfile_to_desfile () {

	local src_file_path="${1}"
	local des_file_path="${2}"


	util_error_echo
	util_error_echo cp -f "${src_file_path}" "${des_file_path}"
	cp -f "${src_file_path}" "${des_file_path}"


	util_error_echo

	return 0
}

util_copy_from_srcdir_to_desdir () {

	local src_dir_path="${1}"
	local des_dir_path="${2}"


	util_error_echo
	util_error_echo mkdir -p "${src_dir_path}"
	mkdir -p "${src_dir_path}"


	util_error_echo
	util_error_echo mkdir -p "${des_dir_path}"
	mkdir -p "${des_dir_path}"


	util_error_echo
	util_error_echo cp -rfT "${src_dir_path}" "${des_dir_path}"
	cp -rfT "${src_dir_path}" "${des_dir_path}"


	util_error_echo

	return 0
}

sudo_util_copy_from_srcfile_to_desfile () {

	local src_file_path="${1}"
	local des_file_path="${2}"


	util_error_echo
	util_error_echo sudo cp -f "${src_file_path}" "${des_file_path}"
	sudo cp -f "${src_file_path}" "${des_file_path}"


	util_error_echo

	return 0
}

sudo_util_copy_from_srcdir_to_desdir () {

	local src_dir_path="${1}"
	local des_dir_path="${2}"


	util_error_echo
	util_error_echo mkdir -p "${src_dir_path}"
	mkdir -p "${src_dir_path}"


	util_error_echo
	util_error_echo sudo mkdir -p "${des_dir_path}"
	sudo mkdir -p "${des_dir_path}"


	util_error_echo
	util_error_echo sudo cp -rfT "${src_dir_path}" "${des_dir_path}"
	sudo cp -rfT "${src_dir_path}" "${des_dir_path}"


	util_error_echo

	return 0
}

##
### Head: Util / Copy
################################################################################


################################################################################
### Head: Model / model_config_install
##

mod_config_install_home () {

	local src_dir_path="${REF_BASE_DIR_PATH}/asset/overlay/etc/skel"
	local des_dir_path="${HOME}"


	util_copy_from_srcdir_to_desdir "${src_dir_path}" "${des_dir_path}"


	return 0
}

mod_config_install_home_config_hypr () {

	local src_dir_path="${REF_BASE_DIR_PATH}/asset/overlay/etc/skel/.config/hypr"
	local des_dir_path="${HOME}/.config/hypr"

	
	util_error_echo
	util_error_echo "cp -rf ${src_dir_path}/. ${des_dir_path}/."
	cp -rf "${src_dir_path}"/. "${des_dir_path}"/.


	return 0
}

mod_config_install_home_config_ml4w () {

	local src_dir_path="${REF_BASE_DIR_PATH}/asset/overlay/etc/skel/.config/ml4w"
	local des_dir_path="${HOME}/.config/ml4w"


	util_error_echo
	util_error_echo "cp -rf ${src_dir_path}/. ${des_dir_path}/."
	cp -rf "${src_dir_path}"/. "${des_dir_path}"/.


	return 0
}

mod_config_install_home_local_bin () {

	local src_dir_path="${REF_BASE_DIR_PATH}/asset/overlay/etc/skel/.local/bin"
	local des_dir_path="${HOME}/.local/bin"


	util_error_echo
	util_error_echo "cp -rf ${src_dir_path}/. ${des_dir_path}/."
	cp -rf "${src_dir_path}"/. "${des_dir_path}"/.


	return 0
}

model_config_install () {


	#mod_config_install_home

	mod_config_install_home_config_hypr
	mod_config_install_home_config_ml4w
	mod_config_install_home_local_bin


	return 0
}

##
### Tail: Model / model_config_install
################################################################################


################################################################################
### Head: Portal / portal_config_install
##

portal_config_install () {

	util_error_echo
	util_error_echo "##"
	util_error_echo "## ## portal_config_install"
	util_error_echo "##"
	util_error_echo




	model_config_install




	return 0
}

##
### Tail: Portal / portal_config_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	portal_config_install "${@}"

}

__main__ "${@}"

##
### Tail: Main
################################################################################
