class Pessoa
  attr_accessor :nome
  attr_accessor :idade
  attr_accessor :etnia
  
  def initialize(nome, idade, etnia)
    @nome = nome
    @idade = idade
    @etnia = etnia
  end
end
