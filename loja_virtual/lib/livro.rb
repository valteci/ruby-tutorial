class Livro

  attr_accessor :preco, :categoria, :isbn
  attr_reader :autor, :titulo

  def initialize autor, titulo, isbn, n_paginas, preco, categoria
    @autor = autor
    @titulo = titulo
    @isbn = isbn
    @n_paginas = n_paginas
    @preco = preco
    @categoria = categoria
  end

  def to_s
    puts "Autor: #{@autor}, Titulo: #{@titulo}, isbn: #{@isbn}, n_paginas: #{@n_paginas}, preco: #{@preco}, categoria: #{@categoria}"
  end

  def eql? other
    puts 'eu rodo!'
    @isbn == other.isbn
  end

  def hash
    @isbn.hash
  end

end