class Pessoa
	attr_accessor :nome
	attr_accessor :idade

	# construtor
	def initialize(nome, idade)
		@nome = nome
		@idade = idade
	end

=begin
	# get
	def nome
		@nome
	end

	def idade
		@idade
	end

	# set
	def nome= (nome)
		@nome = nome
	end

	def idade= (idade)
		@idade = idade
	end
=end

	def imprimir
		puts "Nome: #{self.nome} - Idade: #{self.idade}"
	end

end
