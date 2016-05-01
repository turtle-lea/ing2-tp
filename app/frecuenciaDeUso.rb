class FrecuenciaDeUso
	def initialize(unValorPorcentual)
		if unValorPorcentual < 0 or unValorPorcentual > 100
			raise "Se intento crear una frecuencia de uso con un valor porcentual incorrecto."
		end

		@valorPorcentual = unValorPorcentual
	end

	def valorPorcentual()
		@valorPorcentual
	end
end