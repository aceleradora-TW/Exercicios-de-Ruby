require "date";
require_relative "./cliente.rb";
require_relative "./carrinho.rb"


print "\n"
cliente1 = Cliente.new("Ana", "Av.Ipiranga",5454545,"bairro", 155, 1215151)

puts cliente1.nome
puts cliente1.endereco
puts cliente1.cep
puts cliente1.bairro
puts cliente1.numero
puts cliente1.rg
print "\n"


print "\n"
cliente2 = Carrinho.new(001, 22, "Ana", Date.parse("2016-05-09"), "Radio")
puts "COD do Produto: #{cliente2.cod_produto}"
puts "Preço: #{cliente2.preco}"
puts "Nome: #{cliente2.cli_nome}"
puts "Data de compra: #{cliente2.data_compra}"
puts "Produto: #{cliente2.produto}"
print "\n"



=begin
cliente.rgValido?
cliente.verificaNome?ad
cliente.verificaCEP?

puts "Digite sua compra"
puts compra.compraProduto(gets.chomp)
=end

