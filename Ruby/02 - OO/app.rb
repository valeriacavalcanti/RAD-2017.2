load ("cadastro.rb")

cad = Cadastro.new

cad.add(Pessoa.new("Primeira Pessoa", 1))
cad.add(Pessoa.new("Segunda Pessoa", 2))
cad.add(Pessoa.new("Terceira Pessoa", 3))
cad.add(Pessoa.new("Quarta Pessoa", 4))
cad.add(Pessoa.new("Quinta Pessoa", 4))
cad.add(Pessoa.new("Sexta Pessoa", 4))

cad.add(PessoaFisica.new("Primeira Pessoa Física", 1, "11"))
cad.add(PessoaFisica.new("Segunda Pessoa Física", 2, "22"))
cad.add(PessoaFisica.new("Terceira Pessoa Física", 3, "33"))
cad.add(PessoaFisica.new("Quarta Pessoa Física", 4, "44"))

#puts cad.lista.inspect
puts "Pessoa: #{cad.qtdePessoa}"
puts "Pessoa Física: #{cad.qtdePessoaFisica}"
