require 'yaml'
require File.expand_path('loja_virtual/lib/livro')

class BancoDeArquivos
  def salvar(livro)
    File.open('livros.yaml', 'a') do |arquivo|
      arquivo.puts YAML.dump(livro)
      arquivo.puts ''
    end
  end

  def carregar
    $/ = "\n\n"

    File.open("livros.yaml", "r").map do |livro_serializado|
      YAML.load livro_serializado
    end

  end

end