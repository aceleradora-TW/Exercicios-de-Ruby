load 'telefone.rb'

describe 'Telefone' do

  describe '#initialize' do

    it 'Deve criar um novo tefone com um numero' do
      telefone = Telefone.new("1234567")

      expect(telefone).to be_a(Telefone)
    end

    describe 'Quando criar um numero de telefone com mais de 7 digitos' do

      it 'Deve restorna um erro' do
        expect{Telefone.new("123456789")}.to raise_error(ArgumentError)
      end
      
    end

  end

end
