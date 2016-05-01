class GeneradorDeNumerosAleatorios
	def initialize(unNumeroMinimo, unNumeroMaximo)
		@generador = Random.new
		@min = unNumeroMinimo
		@max = unNumeroMaximo
	end

	def generar()
		@generador.rand(@min..@max)
	end
end