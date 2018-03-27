object pepita {
    var energia = 0
    
    method volar(unosKms) {
        energia = energia - 10 - unosKms
    }
    
    method energia() {
        return energia
    }
    
    method comer(gramos) {
        energia = energia + (gramos*4)
    }
    
    method estaDebil() {
        return energia < 50
    }
    
    method estaFeliz() {
        return energia > 500 && energia < 1000
    }
    
    method cuantoQuiereVolar() {
        var kms = energia/5
        if (energia > 300 && energia < 400) {
            kms += 10
        }
        if (energia % 20 == 0) {
            kms += 15
        }
        return kms
    }
    
       method haceLoQueQuieras() {
        if (self.estaDebil()) {
            self.comer(20)
        }
        if (self.estaFeliz()) {
            self.volar(self.cuantoQuiereVolar())
        }
    }
    
    method vacacionar(destino) {
        energia = energia + destino.energiaRevitalizadora(self)
    }
}

object sierrasCordobesas {
    method energiaRevitalizadora(turista) {
        return 70
    }
}

object patagonia {
    method energiaRevitalizadora(turista) {
        return 30
    }
}

object marDelPlata {
    var temporadaBaja = true
    
    method energiaRevitalizadora(turista) {
        return if(temporadaBaja) 80 else -20
    }
    
    method cambiarTemporada() {
        temporadaBaja =! temporadaBaja
    }
}

object noroeste3 {    
    //solo funciona con pepita
    method energiaRevitalizadora() {
        return pepita.energia()*10/100
    }
}

object noroeste2 {
    //evitar usar, puede haber solo un turista a la vez
    var turista
    
    method energiaRevitalizadora() {
        return turista.energia()*10/100
    }
    
    method turista(unTurista) {
        turista = unTurista
    }
}

object noroeste {
    //mejor opcion, el problema es que se modifico pepita y se deben cambiar el resto de los destinos
    method energiaRevitalizadora(turista) {
        return turista.energia()*10/100
    }
}

object roque {
//    method entrenar(ave) {
//        ave.volar(10)
//        ave.comer(300)
//        ave.volar(5)
//        ave.haceLoQueQuieras()
//    }
	var property ave;
	var property rutina = { _ave =>
        _ave.volar(10)
        _ave.comer(300)
        _ave.volar(5)
        _ave.haceLoQueQuieras()
    }
	method entrenar() {
		rutina.apply(ave)
	}
}

object rutinaEspecial {
	method apply(unAve) {
		unAve.volar(5)
		unAve.comer(10)
	}
}

object pepon {
    var energia = 0
    
    method volar(unosKms) {
        energia = energia - 1 - (unosKms/2)
    }
    
    method energia() {
        return energia
    }
    
    method comer(gramos) {
        energia = energia + (gramos*2)
    }
    
    method estaDebil() {
        return energia < 50
    }
    
    method estaFeliz() {
        return energia > 500 && energia < 1000
    }
    
    method cuantoQuiereVolar() {
        var kms = energia/5
        if (energia > 300 && energia < 400) {
            kms += 10
        }
        if (energia % 20 == 0) {
            kms += 15
        }
        return kms
    }
    
       method haceLoQueQuieras() {
        if (self.estaDebil()) {
            self.comer(20)
        }
        if (self.estaFeliz()) {
            self.volar(1)
        }
    }
    
    method vacacionar(destino) {
        energia = energia + destino.energiaRevitalizadora(self)
    }
}

object pipa {
    var energia = 0
    var kmsRecorridos = 0
    var gramosIngeridos = 0
    
    method volar(unosKms) {
        energia = energia - 10 - unosKms
        kmsRecorridos += unosKms
    }
    
    method energia() {
        return energia
    }
    
    method comer(gramos) {
        energia = energia + (gramos*4)
        gramosIngeridos += gramos
    }
    
    method estaDebil() {
        return energia < 50
    }
    
    method estaFeliz() {
        return energia > 500 && energia < 1000
    }
    
    method cuantoQuiereVolar() {
        var kms = energia/5
        if (energia > 300 && energia < 400) {
            kms += 10
        }
        if (energia % 20 == 0) {
            kms += 15
        }
        return kms
    }
    
       method haceLoQueQuieras() {
        if (self.estaDebil()) {
        }
        if (self.estaFeliz()) {
        }
    }
    
    method vacacionar(destino) {
        energia = energia + destino.energiaRevitalizadora(self)
    }
    
    method kmsRecorridos() {
        return kmsRecorridos
    }
    
    method gramosIngeridos() {
        return gramosIngeridos
    }
}
