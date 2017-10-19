load("pessoa.rb")

class PessoaFisica < Pessoa
	attr_accessor :cpf

	def initialize(nome, idade, cpf)
		super(nome, idade)
		@cpf = cpf
	end

	def imprimir
		puts "#{self.nome} - #{self.idade} - #{self.cpf}"
	end
end