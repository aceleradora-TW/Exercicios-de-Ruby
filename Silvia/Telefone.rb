class Telefone
	def initialize(numero, credito=50)
		@numero=numero
		@credito=credito
		@@qtd||=0
		@@qtd+=1
		@@listaNumeros||=[]
		@@listaNumeros.push(numero)
	end

	def ligar(numero)
		if @credito>=5
			@credito-=5
			puts "Ligacao realizada para o numero #{numero}"
		else
			puts "Impossivel realizar a ligacao para o numero #{numero}" 
		end
	end

	def adicionar_credito(credito)
		@credito+=credito
	end

	def self.qtd
		@@qtd
	end

	def self.listaNumeros
		@@listaNumeros
	end

end
p Telefone.qtd
t1=Telefone.new(55555555, 6)
t2=Telefone.new(66666666, 46)
t3=Telefone.new(11111111, 12)
t4=Telefone.new(88888888, 55)
t5=Telefone.new(44444444, 5)
t1.ligar(5)
t1.ligar(5)
t1.adicionar_credito(10)
t1.ligar(5)
p Telefone.qtd
p Telefone.listaNumeros
