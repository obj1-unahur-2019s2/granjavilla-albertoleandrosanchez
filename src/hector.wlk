import wollok.game.*
import cultivos.*

class Mercado{
	const property image= "market.png"
	
}

object hector {
	var property position = new Position(x = 3, y = 3)
	const property image = "player.png"
	var property plantasCosechadas = []
	var property oro
	
	method hayPlanta(){
		return (game.getObjectsIn(self.position())).size() >1
	}
	
	method plantarMaiz(){
		if(not self.hayPlanta()){
		game.addVisual(new Maiz(position = self.position()))
	}
}
	method plantarTomaco(){
		if(not self.hayPlanta()){
		game.addVisual(new Tomaco(position = self.position()))
	}}
	
	method plantarTrigo() {
		if(not self.hayPlanta()){
		game.addVisual(new Trigo(position=self.position()))
	}}
	
	
	method regarPlanta(){
		//colliders siempre devuelve una coleccion sea vacia o con objetos dentro.
		if (not self.hayPlanta()){
			game.say(self,"no tengo nada que regar")
		}
		else{game.colliders(self).forEach({planta => planta.regate()})}
	}
		
	method cosecharPlanta(){	
		game.colliders(self).forEach({planta => game.removeVisual(planta)
			plantasCosechadas.add(planta)
		})
	}
	
	method cantidadDePlantasCosechadas(){
		return plantasCosechadas.size()
	}
	method vendeTodo(){
		oro += plantasCosechadas.sum({planta => planta.precio()})
		plantasCosechadas.clear()

	}
}