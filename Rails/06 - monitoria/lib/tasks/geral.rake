namespace :geral do

  desc "Gerar valores falsos para aluno, disciplina e inscrição"
  task seedfake: :environment do

  	print "Inserindo Alunos ... "
	# comandos para inserir alunos
	100.times do |i|
		Student.create!(nome: Faker::Name.name, matricula: Faker::Number.digit.to_s)
	end
	puts " [OK]"


	print "Inserindo Disciplinas ... "
	# comandos para inserir disciplinas
	100.times do |i|
		Discipline.create!(descricao: Faker::Book.title, abreviacao: Faker::Book.genre)
	end
	puts " [OK]"


	print "Inserindo Inscrições ... "
	# comandos para inserir inscrições
	100.times do |i|
		s = Subscription.new
		s.nota = 10
		s.cre = 9
		s.discipline = Discipline.all.sample
		s.semester = Semester.all.sample
		s.student = Student.all.sample
		s.save
	end
	puts " [OK]"
  end

end
