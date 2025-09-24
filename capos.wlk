object rolando {    
    const hogar = castilloDePiedra
    var cantMaxDeObj = 2
    var artefactosRecolectados = []

    method cantMaxDeObj() = cantMaxDeObj  
    
    method meChoqueCon(algo) {
      algo.meToco(self)
    }

    method levantarArtefacto(artefacto) {
      if (self.cantDeArtefactos() < self.cantMaxDeObj()){
        artefactosRecolectados.add(artefacto)
      }
    }

    method cantDeArtefactos() = artefactosRecolectados.size()

    method llegeAMiHogar() {
      artefactosRecolectados.forEach({ el => ) })
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

object castilloDePiedra {
  var artefactosEnHogar = []

  method meToco(alguien) {
    alguien.llegeAMiHogar()
  }

}