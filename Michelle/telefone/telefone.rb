class Telefone

  def initialize(numero)
    if numero.length > 7
      raise ArgumentError.new("Telefone deve ter 7 digitos")
    end

    @numero = numero
  end

end
