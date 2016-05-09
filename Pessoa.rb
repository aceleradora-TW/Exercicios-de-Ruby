class Pessoa

	def initialize(nome, endereco)
		@nome = nome
		@endereco = endereco
		@@qtd||=0
		@@qtd+=1
	end

	def endereco
		@endereco
	end

	def nome
		@nome
	end
end

p = Pessoa.new("ABC", "ABC")
puts Pessoa.methods