import gimnasia.*
import personas.*

class Club {
  
    var property listaDePredios  

    method mejorPredioDePara(predios, unaPersona) {

        return predios.max{predio => predio.caloriasQuemadasPor(predio.listaDeRutinas(), unaPersona.tiempoDeEjercitacion())}
        

    } 
      
    method prediosTranquisDePara(predios, unaPersona) 
      
    method rutinasMasExigentesDePara(predios, unaPersona) 
      
    
    
}

class Predio  {
  
    var property listaDeRutinas = [] 

    method caloriasQuemadasPor(rutinas, tiempo) {
      
        return rutinas.sum{rutina => rutina.caloriasQueQuemaPor(tiempo)}
    }
}

class PredioNautico inherits Predio {
  
    override method listaDeRutinas() {
      
        return [RutinaRemo, RutinaRemoCompeticion]

    }

}

class PredioRecreo inherits Predio {
  
    override method listaDeRutinas() {
      
        return [RutinaRunning, RutinaMaraton]

    }

}