import wollok.game.*
import cultivos.*

object hector {
	var property position = new Position(x = 3, y = 3)
	const property image = "player.png"
	var property plantasCosechadas = []
	
	method plantaMaiz(){
		game.addVisual(new Maiz(position = self.position()))
	}
	method regarPlanta(){
		//colliders siempre devuelve una coleccion sea vacia o con objetos dentro.
		game.colliders(self).forEach({planta => planta.regate()})
	}
	method cosecharPlanta(){
		
		game.colliders(self).forEach({planta => game.removeVisual(planta)
			plantasCosechadas.add(planta)
		})
	}
	method cantidadDePlantasCosechadas(){
		return plantasCosechadas.size()
	}
	
}