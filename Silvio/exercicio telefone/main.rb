load 'telefone.rb' #chama arquivo

x = Telefone.new(5178965412, )
puts x.numero
print "credito atual "
puts x.credito
x.ligar
puts "credito atual: #{x.credito}"
