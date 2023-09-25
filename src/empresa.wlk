import universidad.*
import profesionales.*

class EmpresaDeServicios {
	const profesionales = #{}
	var property honorarioDeReferencia
	
	method cuantosEstudiaronEn(univ) = profesionales.count({p => p.universidad() == univ})
		
	method profesionalesCaros() = profesionales.filter({p => p.honorariosPorHora() > honorarioDeReferencia})
	
	method universidadesFormadoras() = profesionales.map({p => p.univesidad()}).asSet()
	
	method profesionalMasBarato() = profesionales.min({p => p.honorariosPorHora()})
	
	method esDeGenteAcotada() = not profesionales.any({p => p.provinciasDondePuedeTrabajar().size() > 3})
	
	method esDeGenteAcotadaAll() = profesionales.all({p => p.provinciasDondePuedeTrabajar().size() < 3})
}
