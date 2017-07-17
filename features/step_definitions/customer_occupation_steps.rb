Given(/^they are registered$/) do
end

Given(/^they are logged in$/) do
end

Given(/^they have an industry and occupation$/) do
  expect(@customer.industry.name.present?).to eq true
  expect(@customer.industry.occupation.present?).to eq true
end

When(/^they visit the edit profile page$/) do
end

When(/^they select a different industry$/) do
  select "technology", :from => "industrySelect"
end

When(/^they select a different occupation$/) do
  select "web developer", :from => "occupationSelect"
end

Then(/^their industry and occupation is updated$/) do
  expect(@customer.industry.name).to eq "technology"
end