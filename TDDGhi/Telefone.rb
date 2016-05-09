class Telefone

	attr_accessor :numero, :ddd, :creditos

	def initialize(numero, ddd, creditos)
		@numero = numero
		@ddd = ddd
		@creditos = creditos
	end

	def ligar(numero)
		@creditos -= 5
	end

	def recarregar(creditos)
		@creditos += 25
	end

end