load ("pessoa_fisica.rb")

# novos objetos
p1 = Pessoa.new("primeira", 1)
pf1 = PessoaFisica.new("Primeira PF", 10, "1234")

#puts p1.nome
#puts p1.idade

#p1.nome = "Outro primeiro"
#puts p1.nome

p1.imprimir
pf1.imprimir

puts p1.is_a? Pessoa
puts p1.is_a? PessoaFisica

puts pf1.is_a? Pessoa
puts pf1.is_a? PessoaFisica
