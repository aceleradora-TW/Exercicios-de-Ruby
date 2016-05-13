class Caixa
  attr_accessor :dinheiro


  def initialize (dinheiro)
    @dinheiro = dinheiro
  end

  def retornoNotas50(@dinheiro)
    if (@dinheiro%50)%20==0
      return @dinheiro/50
      @dinheiro = @dinheiro%50
    else
      return @dinheiro/50 - 1
      return @dinheiro
      @dinheiro = (@dinheiro-50)%50
    end
  end

  def retornoNotas20()
      return @dinheiro/20
  end

end

num = gets.chomp
mathias = Caixa.new(num.to_i)
puts mathias.retornoNotas50()
puts mathias.retornoNotas20()
