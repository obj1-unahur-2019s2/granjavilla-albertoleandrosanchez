import wollok.game.*
import hector.*
import cultivos.*
import direcciones.*


object elJuego {
	
	var property personajeActual = hector
	
	
	
	method configurarTeclado(){
		keyboard.z().onPressDo({hector.plantarMaiz()})
	 	keyboard.x().onPressDo({hector.plantarTrigo()})
	 	keyboard.c().onPressDo({hector.plantarTomaco()})
	 	keyboard.a().onPressDo({hector.regarPlanta()})
	 	keyboard.s().onPressDo({hector.cosecharPlanta()})
	 	keyboard.d().onPressDo({game.say(hector, "tengo cosechadas"+ hector.cantidadDePlantasCosechadas() + "plantas")})
	 	keyboard.space().onPressDo({game.say(hector, "tengo "+ hector.cantidadDePlantasCosechadas() + " para vender y "+ hector.oro() +" de oro")})
		keyboard.enter().onPressDo({
			if(game.colliders(personajeActual).any({	pd=>pd.puedeMercadear()		})	)	{
				 
				 game.colliders(personajeActual).forEach({
				 		merc =>merc.mercadea(personajeActual)
				 })
			}	 
		})
		
		
	}

	method configurarDireccionJugadorActual(){
	
		keyboard.up().onPressDo({personajeActual.moverEnDireccion(norte)})
		keyboard.down().onPressDo({personajeActual.moverEnDireccion(sur)})
		keyboard.right().onPressDo({personajeActual.moverEnDireccion(este)})
		keyboard.left().onPressDo({personajeActual.moverEnDireccion(oeste)})
	}
	
	method configurarAcciones() {
		game.onTick(1000, "movimientoOso", {
			var dado = (1..1).map ({n=> 0.randomUpTo(4).truncate(0)})
		
		if (dado==0 and oso.position().y() < game.height() -1){
			oso.position(oso.position().up(1))
			}
		else if (dado==1 and oso.position().y() > 0 ){
			oso.position(oso.position().down(1))
			}
		else if (dado==2 and oso.position().x() > 0){
			oso.position(oso.position().left(1))
			}
		else if (dado==3 and oso.position().x() < game.width() -1){
			oso.position(oso.position().right(1))
			}
		}
		)
	}
}
