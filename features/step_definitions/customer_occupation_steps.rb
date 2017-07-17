Given(/^there are some industries$/) do
  @tech = Industry.create(name: "Technology")
  @politics = Industry.create(name: "Politics")
end

Given(/^they have an industry$/) do
  @customer.industry = @tech
end

When(/^they select a different industry$/) do
  select "Politics", :from => "customer_industry_id"
end

Then(/^their industry and occupation is updated$/) do
  @customer.reload
  expect(@customer.industry.name).to eq "Politics"
end