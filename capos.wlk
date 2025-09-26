object rolando {    
    const hogar = castilloDePiedra
    var property cantMaxDeObj = 2
    const artefactosRecolectados = []
    const historialDeEncuentros = []  
    
    method meChoqueCon(algo) {
      algo.meToco(self)
    }

    method levantarArtefacto(artefacto) {
      if (self.cantDeArtefactos() < self.cantMaxDeObj()){
        artefactosRecolectados.add(artefacto)
      }
      historialDeEncuentros.add(artefacto)
    }

    method cantDeArtefactos() = artefactosRecolectados.size()

    method miHogar() { 
      hogar.agregarEstosArtefactos(artefactosRecolectados)
      artefactosRecolectados.clear() 
  }

  method artefactosRecolectados() = artefactosRecolectados

  method artefactosQuePosee() = hogar.artefactosEnHogar() + artefactosRecolectados
}

object castilloDePiedra {
  const artefactosEnHogar = []

  method artefactosEnHogar() = artefactosEnHogar

  method meToco(alguien) {
    alguien.miHogar()
  }

  method agregarEstosArtefactos(artefactos) {
    artefactosEnHogar.addAll(artefactos)
  }
}

object espadaDelDestino {

  method meToco(alguien) {
    alguien.levantarArtefacto(self)
  }
}

object libroDeHechizos {
  method meToco(alguien) {
    alguien.levantarArtefacto(self)
  }
}

object collarDivino {
  method meToco(alguien) {
    alguien.levantarArtefacto(self)
  }
}

object armaduraDeAceroVayrio {
  method meToco(alguien) {
    alguien.levantarArtefacto(self)
  }
}


//caso de uso 
// un sistema no tiene un p y un f (que gimenez le pague a sus empleado) 

/* el metodo empieza con validar - if con la condicion que se tiene que cumplir (casi siempre negado) - self.error

method validarAlgo {
 if not self. condicionquesetieneqcumplir {
    self.error()
  }
} 

NO TIENE RETURN

*/

// detener el error - try cach

//pensar una coleccion como un bolso 