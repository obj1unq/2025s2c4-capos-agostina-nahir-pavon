object rolando {    
    const hogar = castilloDePiedra
    var property cantMaxDeObj = 2
    const artefactosRecolectados = []
    const historialDeEncuentros = []  
    var property poderBase = 5

    method poderDePelea() = self.poderBase() + self.poderDeLaSumatoriaDeArtefactos()
    
    //sumatoria de poderes 
    method poderDeLaSumatoriaDeArtefactos() = 
      artefactosRecolectados.forEach({
      el => el.poder(self)
    })

    method ocurreBatalla() {
      self.usarArtefactosEnBatalla()
      self.incrementarBase()
    }

    method usarArtefactosEnBatalla() {
      artefactosRecolectados.clear()
    }

    method incrementarBase() {
      poderBase += 1
    }

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

  //personaje.usosEnBatalla(self) == 1
  method poder(personaje) {
  if ( ){
    return personaje.poderBase()
  }
  else {
    return personaje.poderBase() / 2
  }
  }
}

object libroDeHechizos {
  method meToco(alguien) {
    alguien.levantarArtefacto(self)
  }
}

object collarDivino {
  var property poderBase = 3

  method meToco(alguien) {
    alguien.levantarArtefacto(self)
  }

  method poder(personaje){
    if (personaje.poderBase() > 6){
      return self.poderBase() //+ personaje.usosEnBatalla(self)
    } else {
      return self.poderBase()
    }
  }
}

object armaduraDeAceroVayrio {
  const valorBase = 6

  method valorBase() = valorBase

  method meToco(alguien) {
    alguien.levantarArtefacto(self)
  }

  method poder(personaje) = self.valorBase()
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

