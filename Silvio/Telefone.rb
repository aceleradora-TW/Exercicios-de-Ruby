class Telefone
	
	attr_accessor :numero, :credito

	def initialize(numero, credito=50)
		@numero = numero
		@credito = credito
		@@qtd||= 0
		@@qtd+= 1
	end

	def ligar(numero)
		if @credito <= 5
			puts "Voce nao tem credito suficiente para completar a ligacao"
		else
			@credito-=5
			puts "Voce fez a ligacao"
		end
	end

	def self.qntd
		@@qtd 
	end
end

t = Telefone.new(97858548)
t.ligar(234362136321)
puts t.credito
p = Telefone.new(32816382196321)
puts Telefone.qntd