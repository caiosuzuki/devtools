function restore() {
	if [ "${2}" == "censo" ]; then
		echo "Restoring CheffEscolar"
		bash ~/devtools/baks/restore_censo.sh
	fi

	if [ "${2}" == "aquisicao" ]; then
		echo "Restoring CheffEscolar_Aquisicao"
		bash ~/devtools/baks/restore_aquisicao.sh
	fi

	if [ "${2}" == "all" ]; then
		echo "Restoring CheffEscolar and CheffEscolar_Aquisicao"
		bash ~/devtools/baks/restore_censo.sh
		bash ~/devtools/baks/restore_aquisicao.sh
	fi
}

function setup_auth0_id() {
	echo "Setting up auth0's id."
	bash ~/devtools/baks/setup_auth0_id.sh
}

if [ "${1}" == "restore" ]; then
	restore $@
fi

if [ "${1}" == "setup-auth" ]; then
	setup_auth0_id $@
fi