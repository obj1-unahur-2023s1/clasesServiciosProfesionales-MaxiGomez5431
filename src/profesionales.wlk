import empresa.*
import universidad.*

// esta clase está completa, no necesita nada más
class ProfesionalAsociado {
	var property universidad
	
	method provinciasDondePuedeTrabajar() { return #{"Entre Ríos", "Corrientes", "Santa Fe"} }
	
	method honorariosPorHora() { return 3000 }
}


// a esta clase le faltan métodos
class ProfesionalVinculado {
	var property universidad
	
	method provinciasDondePuedeTrabajar () {
		return universidad.provincias()
	}
	
	method honorariosPorHora () {
		return universidad.honorariosPorHoraRecomendado()
	}

}


// a esta clase le faltan atributos y métodos
class ProfesionalLibre {
	var property universidad
	const property provinciasDondePuedeTrabajar = #{}
	const property honorariosPorHora 
	
	
}



