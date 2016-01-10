class Elephant
  STATE = {
  'UT' => 6.85,
  'NV' => 8.0,
  'TX' => 6.25,
  'AL' => 4.0,
  'CA' => 8.25
  }
  DESCUENTO= [
    [1000, 3],
    [5000, 5],
    [7000, 7],
    [10000, 10],
    [50000, 15]
  ]

  def initialize(cantidad, costo, estado)
    @cantidad= cantidad.to_f
    @costo= costo.to_f
    @estado= estado
  end

  def subtotal
    @cantidad * @costo
  end
  def descuento
    s = subtotal
    porc= 0
    DESCUENTO. each {|e| porc= e[1] unless s<e[0]}
    [s*porc/100.0, porc]
  end
  def impuesto
    s = subtotal
    d = descuento
    imp= STATE[@estado]
    [(s-descuento[0])*imp/100.0, imp]
  end
  def total
    s = subtotal
    d = descuento
    i = impuesto
    s-d[0]+i[0]
  end
end
