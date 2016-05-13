class Caixa
  attr_accessor :dinheiro

  def initialize (dinheiro){
    @dinheiro = dinheiro
  }
end

def retornoNotas50(){
  if (@dinheiro%50)%20==0
    return @dinheiro/50
    @dinheiro = @dinheiro%50
  else
    return @dinheiro/50 - 1
    @dinheiro = (@dinheiro-50)%50
}

def retornoNotas20(){
  if dinheiro%20==0
    return @dinheiro/20
}
