import cosas.*
object camion {
    const carga = []
    method cargarObjeto(unObjeto){
        carga.add(unObjeto)
    }
    method descargarObjeto(unObjeto){
        if(carga.contains(unObjeto)){
            carga.remove(unObjeto)
        }
    }
    method todasLasCosasCargadasSonPares(){
       return !carga.any({c => c.peso().odd()})

    }
    method contieneCosaConPeso(unPeso){
        return carga.any({c => c.peso() == unPeso})
    }
    method primeraCargaConPeligrosidad(unaPeligrosidad){
        return carga.find({c => c.peligrosidad() == unaPeligrosidad})
    }

    method nivelDePeligrosidadMayorA(unaPeligrosidad){
        return carga.filter({c => c.peligrosidad() > unaPeligrosidad})
    }

    method superaLaPeligrosidadDe(unObjeto){
        return carga.filter({c => c.peligrosidad() > unObjeto.peligrosidad()})
    }

    method estaExcedido () {
        return carga.sum({c => c.peso()}) > 2500 
    }

    method puedeCircularEnRuta (unaPeligrosidad) {
        return  not self.estaExcedido() and not carga.nivelDePeligrosidadMayorA(unaPeligrosidad)
    }

}   