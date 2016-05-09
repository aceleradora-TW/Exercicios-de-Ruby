class VerificaDadosCliente

	def self.verificaRg(rg)
		if rg.class == Fixnum
			puts 'É um RG'
		else
			puts 'Não válido'
		end
	end

	def self.verificaNome(nome)
		if nome.class == String
			puts 'É um string'
		else
			puts 'Não é um string'
		end
	end

	def self.verificaCEP(cep)
		if cep.class == Fixnum
			puts 'Número digitado menor que 8'
		else
			puts 'Número não é digitado menor que 8'
		end
	end
end

