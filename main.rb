load 'Professor.rb'
load 'ClassPessoa.rb'
load 'Aluno.rb'
load 'cadastraAlunos.rb'
load "Turma.rb"

aluno = Aluno.new("018915", "Ze", "1981", "06924242424")
turma = Turma.new("danca")
CadastraAluno.insere_aluno_na_turma(aluno, turma)

puts turma.alunos