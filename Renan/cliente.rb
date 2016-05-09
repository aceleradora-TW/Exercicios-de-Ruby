require_relative "./verifica-rg.rb";

class Cliente

	attr_reader :nome, :endereco, :cep, :bairro, :numero, :rg

	def initialize(nome, endereco, cep, bairro, numero, rg)
		@nome = nome
		@endereco = endereco
		@cep = cep
		@bairro = bairro
		@numero = numero
		@rg = rg
	end


=begin
	def rgValido?
		VerificaDadosCliente.verificaRg(self.rg)
	end

	def nomeValido?
		VerificaDadosCliente.verificaNome(self.nome)
	end

	def cepValido?
		VerificaDadosCliente.verificaCEP(self.cep)
	end
=end

end