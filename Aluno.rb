load 'ClassPessoa.rb'

class Aluno < Pessoa
	
	attr_accessor :cpf
	
	def initialize (matricula, nome, anoNascimento, cpf)
		super(matricula, nome, anoNascimento)
		@cpf = cpf
	end

end