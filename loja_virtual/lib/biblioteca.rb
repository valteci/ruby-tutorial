require File.expand_path('loja_virtual/lib/banco_de_arquivos.rb')

class Set

  def initialize
    @banco_de_arquivos = BancoDeArquivos.new
    @livros = nil
  end

  def adicionar livro
    salvar_livro livro
    @livros << livro
  end

  def livros_por_categoria(categoria)
    @livros.select { |livro| livro.categoria == categoria }
  end

  def livros
    @livros ||= @banco_de_arquivos.carregar()
  end

  private()
  def salvar_livro(livro)
    @banco_de_arquivos.salvar(livro)
    yield if block_given?
  end

end