import objetos.*

object bolichito {
	var objetoEnMostrador
	var objetoEnVidriera
	
	method ponerEnMostrador(objeto) { objetoEnMostrador = objeto }
	method ponerEnVidriera(objeto) { objetoEnVidriera = objeto }
	
	method esBrillante() { 
		const elDeMostradorBrilla = objectoEnMostrador.material().brilla()   // implementar
		const elDeVidrieraBrilla = objectoEnVidriera.material().brilla()
		return elDeMostradorBrilla and elDeVidrieraBrilla
	}
	
	method esMonocromatico() {
		return objetoEnMostrador.color() == objetoEnVidriera.color()
	}
	
	method estaDesequilibrado() {
		return objetoEnMostrador.peso() > objetoEnVidriera.peso()
		// completar
	}
	
	method tieneAlgoDeColor(color) {
		// completar
	}

	method puedeOfrecerleAlgoA(persona) {
		return persona.leGusta(objetoEnMostrador) or persona.leGusta(ObjetoEnVidriera)
	}
	
	method puedeMejorar() {
		return self.estaDesequilibrado()
	}
}