require './elephant'

Given(/^una compra de (\d+) elemento a (\d+) peso$/) do |cant, precio|
  @elephant= Elephant.new(cant, precio, '')
end

Then(/^subtotal debe ser (\d+)$/) do |subtotal|
  expect(@elephant.subtotal).to eq subtotal.to_f
end
