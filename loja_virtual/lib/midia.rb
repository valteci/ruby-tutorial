class Midia
  attr_accessor :valor
  attr_reader :titulo

  def initialize
    @desconto = 0.1
  end

  def valor_com_desconto
    @valor - (@valor * @desconto)
  end
end