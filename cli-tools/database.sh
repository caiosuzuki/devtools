function restore() {
	if [ "${2}" == "cheff" ]; then
		echo "Restoring CheffEscolar database..."
		bash ~/devtools/baks/restore_cheff.sh
	fi
}

if [ "${1}" == "restore" ]; then
	restore $@
fi
