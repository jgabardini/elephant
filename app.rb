require './elephant'

@elephant= Elephant.new
@elephant.compra!(ARGV[0], ARGV[1], ARGV[2])
d= @elephant.descuento
i= @elephant.impuesto
puts "Facturamdo #{ARGV[0]} articulos a #{ARGV[1]} pesos cada uno en #{ARGV[2]}"
puts "Subtotal  $#{@elephant.subtotal}"
puts "Descuento $#{d[0]} (#{d[1]}%)"
puts "Impuesto $#{i[0]} (#{i[1]}%)"
puts "Total  $#{@elephant.total}"
