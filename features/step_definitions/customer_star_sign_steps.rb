When(/^they edit their star sign$/) do
  select 'Cancer', :from => "customer[star_sign]"
end

Then(/^their star sign is changed$/) do
  @customer.reload
  expect(@customer.star_sign).to eq "Cancer"
end

When(/^they visit their own page$/) do
  visit customer_path(@customer)
end

Then(/^they see their star sign$/) do
  save_and_open_page
  expect(page.should have_content("Cancer"))
end
