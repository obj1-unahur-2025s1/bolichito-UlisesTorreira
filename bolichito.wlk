import objetos.*
import personas.*

object bolichito{
    var objetoEnVidriera = remera 
    var objetoEnMostrador = pelota
    
    method reemplazarObjetos(enVidriera, enMostrador){
        objetoEnMostrador = enMostrador
        objetoEnVidriera = enVidriera
    }

    method esBrillante() {
        return objetoEnMostrador.esBrillante() &&
        objetoEnVidriera.esBrillante() 
    }

    method esMonocromatico(){
        return objetoEnMostrador.color() == 
        objetoEnVidriera.color()
    }

    method estaEquilibrado() {
        return objetoEnMostrador.peso() >
        objetoEnVidriera.peso()
    }

    method tieneObjetoDeColor(unColor) {
        return objetoEnMostrador.color() == unColor || objetoEnVidriera.color() == unColor 
    }

    method puedeMejorar() {
        return !self.estaEquilibrado() || self.esMonocromatico() //el self sirve para mandarse mensajes en sí mismo
    }

    method tieneAlgoQueLeGusteA(unaPersona) {
        return unaPersona.leGusta(objetoEnVidriera) || unaPersona.leGusta(objetoEnMostrador)
    }
}















