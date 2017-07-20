Given(/^they are on a profile page$/) do
  @customer.update({height: 182})
  visit user_path(@customer.username)
end

Given(/^the label shows metric$/) do
  expect(page).to have_content("In Centimetres")
end

When(/^they click on the height measurement change button$/) do
  click_on 'height_switch'
end

Then(/^they see the height in inches$/) do
  expect(page).to have_content("71.65")
end

Then(/^the label changes$/) do
  expect(page).to have_content("In Inches")
end

