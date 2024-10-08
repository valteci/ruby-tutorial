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

arq = BancoDeArquivos.new
arq.salvar livro1
arq.salvar livro2
