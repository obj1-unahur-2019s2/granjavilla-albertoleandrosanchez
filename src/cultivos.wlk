class Maiz {
	var property position
	var property esAdulta = false
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
}