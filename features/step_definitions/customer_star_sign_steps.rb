When(/^they edit their star sign$/) do
  select 'Cancer', :from => "customer[star_sign]"
end

Then(/^their star sign is changed$/) do
  @customer.reload
  expect(@customer.star_sign).to eq "Cancer"
end
