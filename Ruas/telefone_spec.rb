load 'Telefone.rb'

describe Telefone do

  before :each do
    @telefone = Telefone.new("3300-9000", 40)
  end

  describe '#initialize' do
    describe 'Quando tentar criar um telefone com 9 digitos' do
      it 'Deve criar um objeto telefone' do
        expect(@telefone).to be_a(Telefone)
      end
    end
    describe 'Quando tentar criar um telefone com mais ou menos que 9 digitos' do
      it 'Não deve criar o telefone' do
        expect{Telefone.new("3300-900000", 40)}.to raise_error("Colocou um numero errado")
      end
    end
  end

  describe '#credito' do
    it 'Deve mostrar credito do telefone' do
      expect(@telefone.credito).to equal(40)
    end
  end

  describe '#ligar' do
    it 'Deve decrementar 5 creditos do telefone' do
      @telefone.ligar("3300-9000")
      expect(@telefone.credito).to equal(35)
    end
  end

  describe '#adicionarCredito' do
    it 'Acrescentar o valor passado por parametro, aos creditos do objeto' do
      @telefone.adicionarCredito(10)
      expect(@telefone.credito).to equal(50)
    end
  end
end
