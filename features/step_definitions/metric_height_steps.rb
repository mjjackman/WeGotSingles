When(/^they enter their height in centimeters$/) do
  fill_in 'customer_height', :with => 182.88
end

Then(/^their height is saved$/) do
  @customer.reload
  expect(@customer.height).to eq 182.88
end

Then(/^they will see their height in centimeters$/) do
  expect(page.should have_content(182.88))
end