require './elephant'

Given(/^una compra de (\d+) elemento a (\d+) peso$/) do |cant, precio|
  @elephant= Elephant.new
  @elephant.compra!(cant, precio, '')
end

Then(/^subtotal debe ser (\d+)$/) do |subtotal|
  expect(@elephant.subtotal).to eq subtotal.to_f
end

Then(/^descuento debe ser (\d+) %$/) do |porc|
  expect(@elephant.descuento[1]).to eq porc.to_f
end
