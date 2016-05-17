class Telefone
  attr_accessor :numero
  attr_accessor :credito


  def initialize(numero, credito = 4)
    @numero = numero
    @credito = credito
  end



  def ligar
    if @credito < 5
      puts "nao foi possivel realizar a chamada"
    else
      @credito -= 5
    end
  end
end
