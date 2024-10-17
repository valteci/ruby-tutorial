require File.expand_path('loja_virtual/lib/loja_virtual.rb')

livro1 = Livro.new("Maria", "TDD fácil", isbn="1234", 100, 98.99, :test)
windows = Dvd.new("Windows 11 for dummies", 98.9, :SO)

p windows.valor_com_desconto

