require 'yaml'

class BancoDeArquivos
  def salvar(livro)
    File.open('livros.yaml', 'a') do |arquivo|
      arquivo.puts YAML.dump(livro)
      arquivo.puts ' '
    end
  end
end