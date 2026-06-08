class Rutina {

        method caloriasQueQuemaPor(tiempoTotal) {
          
        return 100 * (tiempoTotal - self.descansoPor(tiempoTotal)) * self.intensidad()

        }

        method descansoPor(tiempo) 

        method intensidad() 

}

class RutinaRunning inherits Rutina {
  
     

    override method descansoPor(tiempoTotal) {
      
      return if(tiempoTotal > 20) {
        5
      } else {
        2
      }
    }
    
  override method intensidad() {
    
    return 1.2

  }

}

class RutinaMaraton inherits RutinaRunning {
  
  override method caloriasQueQuemaPor(tiempoTotal) {
    
    return super(tiempoTotal) * 2
  }

 override method intensidad() {
   
   return 1.5
 }

}

class RutinaRemo inherits Rutina {
  
  override method intensidad() {
   
   return 1.3
 }

  override method descansoPor(tiempoTotal) {
      
      return tiempoTotal / 5
    }

}

class RutinaRemoCompeticion inherits RutinaRemo {
  
  override method intensidad() {
    
    return 1.7

  }

  override method descansoPor(tiempoTotal) {
    
    return self.descansoRutinario().max(super(tiempoTotal) - 3)
  }


  method descansoRutinario() {
    
    return 2
  }
  
}

