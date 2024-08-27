object tom {
	var energia = 50
	
	method comer(raton) {
		energia += 12 + raton.peso()
	}
	
	method correr(distancia) {
		energia -= distancia / 2
	}
	
	method velocidadMaxima() {
		return 5 + (energia / 10)
	}

	method energiaQueAportaUnRaton(raton){
		return 12 + raton.peso()
	}

	method energiaQueGastaAlCorrer(distancia){
		return (distancia / 2)
	} 

	method puedeComerRaton(distancia) {
	  	return self.energiaQueGastaAlCorrer(distancia) < self. energia()
	}

	method quiereComerRaton(raton, distancia) {
		return self.puedeComerRaton(distancia) && (self.energiaQueGastaAlCorrer(distancia) < self.energiaQueAportaUnRaton(raton))
	}
	
	method energia(){
		return energia
	}
}

object jerry {
	var edad = 2
	
	method peso() {
		return edad * 20
	}
	
	method cumplir() {
		edad += 1
	}
}

object nibbles {
	method peso(){
		return 35
	}
}