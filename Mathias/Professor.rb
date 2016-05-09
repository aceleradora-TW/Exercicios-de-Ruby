load 'ClassPessoa.rb'

class Professor < Pessoa
	
	attr_accessor :cnpj

	def initialize(matricula, nome, anoNascimento, cnpj)
		super(matricula, nome, anoNascimento)
		@cnpj = cnpj
	end

end