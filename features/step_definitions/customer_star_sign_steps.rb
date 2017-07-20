When(/^they edit their star sign$/) do
  select 'Cancer', :from => "customer[star_sign]"
end

Then(/^their star sign is changed$/) do
  @customer.reload
  expect(@customer.star_sign).to eq "Cancer"
end

When(/^they visit their own page$/) do
  visit user_path(@customer.username)
end

Then(/^they see their star sign$/) do
  expect(page.should have_content("Cancer"))
end
