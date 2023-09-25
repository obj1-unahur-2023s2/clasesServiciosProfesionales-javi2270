import universidad.*

class ProfesionalAsociado {
	var property universidad
	
	method provinciasDondePuedeTrabajar() = #{"Entre Ríos", "Corrientes", "Santa Fe"} 
	method honorariosPorHora() = 3000 
}

class ProfesionalVinculado {
	var property universidad
	
	method provinciasDondePuedeTrabajar() = #{universidad.provincia()} 
	method honorariosPorHora() = universidad.honorariosRecomendado() 
}

class ProfesionalLibre {
	var property universidad
	const property provincias = #{}
	var property honorariosPorHora
	
	method provinciasDondePuedeTrabajar() = provincias
}







