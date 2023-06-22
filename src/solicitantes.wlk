class SolicitantePersona {
	var provincia
	
	method puedeSerAtendidoPor_(profesional){
		return profesional.provinciasDondePuedeTrabajar().any({lugar => lugar == provincia})
	}
}

class SolicitanteInstitucion {
	const universidadesReconocidas = #{}
	
	method puedeSerAtendidoPor_(profesional){
		return not profesional.universidad().intersection(universidadesReconocidas).isEmpty()
	}
	
}