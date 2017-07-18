When(/^there are some education levels$/) do
  expect(page.should have_content("PhD"))
end

When(/^they select a education level$/) do
  select 'PhD', :from => "customer[education_level]"
end

Then(/^their education in updated$/) do
  @customer.reload
  expect(@customer.education_level).to eq 'PhD'
end