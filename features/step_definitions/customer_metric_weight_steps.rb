When(/^they edit their weight in kg$/) do
  fill_in 'customer_weight', :with => 70
end

Then(/^they have a weight in kg$/) do
  @customer.reload
  expect(@customer.weight).to eq(70) 
end
