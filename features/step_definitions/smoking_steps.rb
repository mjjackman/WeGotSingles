When(/^they select a smoking preference$/) do
  choose 'customer_smoker_true'
  click_on 'Update'
end

Then(/^their smoking preference is updated$/) do
  @customer.reload
  expect(@customer.smoker).to eq true
end

Then(/^their smoking preference is visible on their page$/) do
  expect(page.should have_content("Smoker"))
end