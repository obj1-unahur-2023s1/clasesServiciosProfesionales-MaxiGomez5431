import universidad.*
import profesionales.*

class Empresa {
	const empleados = []
	const honorarioReferencia
	
	method cuantosEmpleadosEstudiaronEn_(universidadASaber){
		return empleados.count({empleado => empleado.universidad() == universidadASaber})
	}
	
	method empleadosCaros(){
		return empleados.map({empleado => empleado.honorariosPorHora() > honorarioReferencia}).asSet()
	}
	
	method universidadesFormadoras(){
		return empleados.map({empleado => empleado.universidad()}).asSet()
	}
	
	method profesionalMasBarato(){
		return empleados.min({empleado => empleado.honorariosPorHora()})
	}
	
	method esDeGenteAcotada(){
		return empleados.all({empleado => empleado.provinciasDondePuedeTrabajar().size() <= 3})
	}
	
}

