class GeneradorDeNumerosAleatorios
	def initialize(unNumeroMinimo, unNumeroMaximo)
		@generador = Random.new
		@min = unNumeroMinimo
		@max = unNumeroMaximo
	end

	def generarUnReal()
		@generador.rand(@min.to_f...@max.to_f)
	end

  	def generarUnEntero()
    	@generador.rand(@min.round...@max.round)
	end

end