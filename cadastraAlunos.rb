class CadastraAluno

	def self.listar_alunos

	end

	def self.insere_aluno_na_turma(aluno, turma)
		turma.alunos << aluno
	end

end