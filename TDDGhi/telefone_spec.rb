load 'Telefone.rb'

describe Telefone do
	describe '#initialize' do
		it 'expect @telefone to be a new Telefone when params are right' do
			telefone = Telefone.new("3300-9000", "51", 100)
			expect(telefone).to be_a(Telefone)
		end
	end
	describe '#ligar' do
		before :each do
			@telefone = Telefone.new("3300-9000", "51", 100)
		end
		it 'when call expect -5 credits on the caller phone' do
			@telefone.ligar(98672861)
			expect(@telefone.creditos).to eq(95)
		end
	end
	describe '#recarregar' do
		before :each do
			@telefone = Telefone.new("3300-9000", "51", 100)
		end
		it 'when calling the method recharge with right params, credits must be added' do
			@telefone.recarregar(25)
			expect(@telefone.creditos).to eq(125)
		end
	end
end