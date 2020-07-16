inicioDaManutencao="${2:6:4}-${2:3:2}-${2:0:2}T${3}:00.000-0400"
texto="${2} às ${3}"
curl --request POST \
	--header "Content-Type: application/json" \
	--data '{ "inicioDaManutencao": "'"${inicioDaManutencao}"'", "mensagemDeAviso": "Para melhor atendê-los, no dia '"${texto}"' o sistema entrará em manutenção e voltará ao ar em alguns minutos." }' \
	http://cheffescolar.sed.ms.gov.br/cheffescolar/rest/avisodemanutencao

