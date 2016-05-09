class Pessoa

	attr_accessor :nome
	attr_reader :endereco

	def initialize(nome, endereco)
		@nome = nome
		@endereco = endereco
		@@qtd||=0 #Se nenhuma instancia for criada, esse valor retornara zero
		@@qtd+=1 #A cada instancia criada dessa classe, aumenta 1
	end

	def self.qtd
		@@qtd
	end

end
maria = Pessoa.new("Maria", "Porto Alegre")
joao = Pessoa.new("Joao", "Porto Alegre")
p joao.nome
p maria.nome
maria.nome=("joana")
p maria.nome
p joao.endereco
p Pessoa.qtd


