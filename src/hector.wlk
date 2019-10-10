import wollok.game.*
import cultivos.*



class Mercado{
	const property image= "market.png"
	const property puedeMercadear = true
	var property plantasQueCompra = []
	
	var property dineroDisponible
	
	method mercadea(jugador){
		if{
		
		game.say(jugador, "tengo "+ hector.cantidadDePlantasCosechadas() + " para vender y "+ jugador.oro() +" de oro")
	
}



object hector {
	var property position = new Position(x = 3, y = 3)
	const property image = "player.png"
	var property plantasCosechadas = []
	var property oro = 0
	
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
	
	method vende(){
		oro += 
	}
	method vendeTodo(){
		oro += plantasCosechadas.sum({planta => planta.precio()})
		plantasCosechadas.clear()

	}
	method moverEnDireccion(direccion){
		self.position(direccion.siguientePosicion(self.position()))
	}
}

object oso{
	var property position = new Position(x = 4, y = 3)
	const property image = "oso.jpg"
	var property plantasCosechadas = []
	var property oro = 0
	
	method moveteALaIzquierda(){
		if(position.x() >0){
			position =position.left(1)
		}
	}
	
	method moveteArriba(){
			if(position.y() < game.height() -1){
				position = position.up(1)
			}
	}
	method moveteALaDerecha(){
		if(position.x()< game.width()-1){
			position = position.right(1)
		}
	}
	method moveteAbajo(){
		if(position.y()> 0){
			position = position.down(1)
		}
	}
		
	
	method moveteAlAzar(){
		//devuelve del 1 al 4
		var dado= 1.randomUpTo(5).truncate(0)
		
		if(dado==1){
			self.moveteALaIzquierda()	
		}
		else if(dado==2){
			self.moveteArriba()	
		}
		else if(dado==3){
		self.moveteALaDerecha()	
		}
		else if(dado==4){
			self.moveteAbajo()	
		}
		
	}	
}