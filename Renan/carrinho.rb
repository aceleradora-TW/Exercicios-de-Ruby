require_relative "./cliente.rb"

class Carrinho
	
	attr_reader :cod_produto, :preco, :cli_nome, :data_compra, :produto

	def initialize(cod_produto, preco, cli_nome, data_compra, produto)
		@cod_produto = cod_produto
		@preco = preco
		@cli_nome = cli_nome
		@data_compra = data_compra
		@produto = []
	end

	def addProdutos(produto)
		@produtos.push(produto)
		puts "O produto #{produto} cadastrado do produto #{cod_produto}."
	end
end
