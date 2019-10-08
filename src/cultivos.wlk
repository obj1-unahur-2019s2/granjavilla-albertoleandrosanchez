class Maiz {
	var property position
	var property esAdulta = false
	const property puedeMercadear = false
	
	method image() {
		if(esAdulta){
			return "corn_adult.png"
		}
		// TODO: hacer que devuelva la imagen que corresponde
		else{
		return "corn_baby.png"}
	}
	method regate(){
		if(not esAdulta){	esAdulta=true	}
	}
	method precio(){
		return 150
	}
}

class Trigo {
	var property position
	var property esAdulta = false
	const property puedeMercadear = false
	
	method image(){
		if (esAdulta){
		return "wheat_1.png"
		}
		else{return "wheat_0.png"}
	}
	method regate(){
		if(not esAdulta){esAdulta=true}
	}
		method precio(){
			return 100	
	}
}

class Tomaco {
	var property position
	var property esAdulta = false
	const property puedeMercadear = false
	
	method image(){
		if (esAdulta){
		return "tomaco.png"
		}
		else{return "tomaco_baby.png"}
	}
	method regate(){
		if(not esAdulta){esAdulta=true}
	}
		method precio(){
			return 80	
	}
}