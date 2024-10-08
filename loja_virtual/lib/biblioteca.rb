class Biblioteca
  
  def initialize
    @livros = {}
  end

  def adicionar livro
    @livros[livro.categoria] ||= []
    @livros[livro.categoria] << livro
  end

  def livros
    @livros.values.flatten
  end

  def livros_por_categoria(categoria, bloco1, bloco2)
    @livros[categoria].each do |livro_meu|
      bloco1.call livro_meu
      bloco2.call livro_meu
    end
  end

end