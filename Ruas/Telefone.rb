class Telefone

	attr_accessor :numero
	attr_accessor :credito

	def initialize(numero, credito)
		raise ArgumentError.new("Colocou um numero errado") if numero.length != 9
		@numero = numero
		@credito = credito
		@@qtd ||=0
		@@qtd += 1
		@@telefones = []
		@@telefones << @numero
	end

	def self.qtd
		@@qtd
	end

	def ligar(numero)
		if @credito > 5
			@@telefones.each do |x|
				if x == numero
					@credito = @credito -5
				end
			end
		else
			puts "Credito insuficiente"
		end
	end

	def adicionarCredito(credito)
		@credito = @credito + credito
	end

end
=begin
Ruas = Telefone.new("97503355", 50)
puts Ruas.numero
puts Ruas.credito
Silva = Telefone.new("69", 40)
puts "Quantidade de telefones #{Telefone.qtd}"
Ruas.ligar("69")
puts "Ligacao efetuada com sucesso Creditos #{Ruas.credito}"
Ruas.adicionarCredito(50)
puts "Creditado 50"
puts Ruas.credito
puts "Retirado 94 creditos"
Ruas.adicionarCredito(-94)
puts Ruas.credito
Ruas.ligar("68")
#123
=end
