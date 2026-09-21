
object knightRider {
    method peso () = 500
    method peligrosidad() = 10
}

object bumblebee {
    var estadoActual = auto
    method peso() = 800
    method peligrosidad() = estadoActual.peligrosidadActual()
    method cambiarDeEstado(unEstado)  {estadoActual = unEstado}
}

object auto {
    method peligrosidadActual() = 15
}

object robot {
    method peligrosidadActual() = 30
}

object paqueteDeLadrillos {
    var cantidadDeLadrillos = 1
  method peso() = cantidadDeLadrillos * 2
  method peligrosidad(){
    return 2
  }
  method cambiarCantidadLadrillos(cantidad){
    cantidadDeLadrillos = cantidad
  }
}

object arenaAGranel {
    var peso = 1
    method peso() = peso
    method peligrosidad(){
        return 1
    }
    method cambiarPeso(nuevoPeso){
        peso = nuevoPeso
    }
}

object bateriaAntiaerea {
    var tieneMisiles = false
    method peso(){
        if(tieneMisiles){
            return 300
        } else {
            return 200
        }
    }
    method peligrosidad(){
        if(tieneMisiles){
            return 100
        } else {
            return 0
        }
    }
    method cambiarEstadoMisiles(){
        if(tieneMisiles){
            tieneMisiles = false
        } else {
            tieneMisiles = true
        }
    }
}

object contenedorPortuario {
    const contenido = []
    method peso(){
        return 100 + contenido.sum({c => c.peso()})
    }
    method peligrosidad(){
        if(contenido.isEmpty()){
            return 0
        }else{
        return contenido.max({c => c.peligrosidad()}).peligrosidad()
        }
    }
    method agregarContenido(unContenido){
        contenido.add(unContenido)
    }
    method quitarContenido(unContenido){
        contenido.remove(unContenido)
    }
}

object residuosRadioactivos {
    var peso = 0
    
    method cambiarPeso(unPeso){
        peso = unPeso}

    method peligrosidad() = 200
}

object embalajeDeSeguridad {
    var objeto = bumblebee
    method peso() = objeto.peso()
    method cambiarObjeto(unObjeto){ objeto = unObjeto}
    method peligrosidad() = objeto.peligrosidad() / 2

}