ESTADO = {
'UT' => 6.85,
'NV' => 8.0,
'TX' => 6.25,
'AL' => 4.0,
'CA' => 8.25
}
DESCUENTO= [
  [1000.0, 3.0],
  [5000.0, 5.0],
  [7000.0, 7.0],
  [10000.0, 10.0],
  [50000.0, 15.0]
]

class Elephant
  def initialize(impuestos=ESTADO, descuentos=DESCUENTO)
    @impuestos= impuestos
    @descuentos= descuentos
  end

  def compra!(cantidad, costo, estado)
    @cantidad= cantidad.to_f
    @costo= costo.to_f
    @estado= estado
  end

  def subtotal
    @cantidad * @costo
  end
  def descuento
    s = subtotal
    porc= 0.0
    @descuentos.each {|e| porc= e[1] unless s<e[0]  }
    [s*porc/100.0, porc]
  end
  def impuesto
    s = subtotal
    d = descuento
    imp= @impuestos[@estado]
    [(s-descuento[0])*imp/100.0, imp]
  end
  def total
    s = subtotal
    d = descuento
    i = impuesto
    s-d[0]+i[0]
  end
end
