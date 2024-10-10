require File.expand_path('loja_virtual/lib/banco_de_arquivos.rb')

class Biblioteca
  
  def initialize
    @livros = {}
    @banco_de_arquivos = BancoDeArquivos.new
  end

  def adicionar livro
    @livros[livro.categoria] ||= []
    @livros[livro.categoria] << livro
    @banco_de_arquivos.salvar (livro)
  end

  def livros
    @livros.values.flatten
  end

  def livros_por_categoria(categoria)
    @livros[categoria].each do |livro_meu|
      yield livro_meu if block_given?
    end
  end

end