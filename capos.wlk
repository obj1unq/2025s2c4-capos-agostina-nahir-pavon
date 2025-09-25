object rolando {    
    const hogar = castilloDePiedra
    var property cantMaxDeObj = 2
    var artefactosRecolectados = []
    var historialDeEncuentros = []  
    
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

    method miHogar() {  //??
      artefactosRecolectados.forEach({ el => hogar.artefactosEnHogar().add(el) })
      artefactosRecolectados.clear() 
  }

  method artefactosRecolectados() = artefactosRecolectados

  method artefactosQuePosee() = hogar.artefactosEnHogar() + artefactosRecolectados
}

object castilloDePiedra {
  var artefactosEnHogar = []

  method artefactosEnHogar() = artefactosEnHogar

  method meToco(alguien) {
    alguien.miHogar()
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

