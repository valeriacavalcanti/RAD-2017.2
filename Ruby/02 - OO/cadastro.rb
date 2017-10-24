load ("pessoa_fisica.rb")

class Cadastro
	attr_accessor :lista

	def initialize
		@lista = Array.new
	end

	def add(valor)
		self.lista.push(valor)
	end

	def qtdePessoaFisica
		qtde = 0
		for e in self.lista
			if e.is_a? PessoaFisica
				qtde += 1
			end
		end
		return qtde
	end

	def qtdePessoa
		qtde = 0
		for e in self.lista
			if !e.is_a? PessoaFisica
				qtde += 1
			end
		end
		return qtde
	end
end