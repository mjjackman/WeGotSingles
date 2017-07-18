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

Then(/^their industry is updated$/) do
  @customer.reload
  expect(@customer.industry.name).to eq "Politics"
end

Given(/^there are some occupations$/) do
  @web_dev = Occupation.create!(title: "Web Developer", industry: @tech)
  @campaign = Occupation.create!(title: "Campaign Manager", industry: @politics)
  @speech = Occupation.create!(title: "Speech Writer", industry: @politics)
end

Given(/^they have an occupation$/) do
  @customer.occupation = @speech
end

When(/^they select a different occupation$/) do
  select "Speech Writer", :from => "customer_occupation_id"
end

Then(/^their occupation is updated$/) do
  expect(@customer.occupation.title).to eq "Speech Writer"
end




