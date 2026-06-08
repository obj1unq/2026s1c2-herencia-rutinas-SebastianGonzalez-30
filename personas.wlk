import gimnasia.*


class Persona {
  
    var property peso 
    var property tiempoDeEjercitacion 

    method kilosPorCaloria() 
      
    method aplicaARutina(unaRutina) 
      
    method pesoPerdidoPorAplicarRutinaPor(unaRutina, tiempoTotal) {

      return if(self.aplicaARutina(unaRutina)) {

                peso - (unaRutina.caloriasQueQuemaPor(tiempoTotal) / self.kilosPorCaloria())
        } else {
            0
        }
    }
    
    
}

class PersonaSedentaria inherits Persona {
  
    

    override method aplicaARutina(unaRutina) {
      
        return self.peso() > self.pesoMaximo()

    }

    method pesoMaximo() {
      
      return 50
    }

    override method kilosPorCaloria() {

        return 7000
    }

    override method pesoPerdidoPorAplicarRutinaPor(unaRutina, tiempoTotal) {

        return if(self.aplicaARutina(unaRutina)) {

                peso - (unaRutina.caloriasQueQuemaPor(tiempoTotal) / self.kilosPorCaloria())
        } else {
            0
        }
    }

}
class Calamardo inherits PersonaSedentaria {
  
    override method peso() {
  
        return self.pesoCalamardo()
    }

    method pesoCalamardo() {
  
        return 60
    }

    

    override method tiempoDeEjercitacion() {
      
      return 5
    }
}

class PersonaAtletica inherits Persona {
    
    override method aplicaARutina(unaRutina) {
      
        return unaRutina.caloriasQueQuemaPor(self.tiempoDeEjercitacion()) > 10000

    }

    override method pesoPerdidoPorAplicarRutinaPor(unaRutina, tiempoTotal) {

        return if(self.aplicaARutina(unaRutina)) {

                peso - (unaRutina.caloriasQueQuemaPor(tiempoTotal) / self.kilosPorCaloria()) - 1
        } else {
            0
        }
    }

    override method kilosPorCaloria() {

        return 8000
    }
    override method tiempoDeEjercitacion() {

     return 90 
    }
}

class Bob inherits PersonaAtletica {
  
  override method peso() {
  
        return self.pesoBob()
    }

    method pesoBob() {
  
        return 40
    }
}