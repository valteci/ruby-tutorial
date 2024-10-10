require File.expand_path("./loja_virtual/lib/loja_virtual")

livro1 = Livro.new(
    'maria',
    'C++ dificil',
    '54322',
    100,
    1000,
    :programacao
)

livro2 = Livro.new(
    'matheus',
    'Bando de dados easy',
    '2994',
    2000,
    1000,
    :banco_de_dados
)

livro3 = Livro.new(
    'jose',
    'Dominando o oracle',
    '9384',
    5000,
    99.33,
    :banco_de_dados
)


lib = Biblioteca.new
lib.adicionar livro1
lib.adicionar livro2
lib.adicionar livro3

puts lib.livros_por_categoria :banco_de_dados



