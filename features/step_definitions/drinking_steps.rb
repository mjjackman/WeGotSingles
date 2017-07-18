When(/^they select a drinking preference$/) do
  choose 'customer_drinker_true'
  click_on 'Update'
end

Then(/^their drinking preference is updated$/) do
  @customer.reload
  expect(@customer.drinker).to eq true
end

Then(/^their drinking preference is visible on their page$/) do
  expect(page.should have_content("Drinks Alcohol"))
end