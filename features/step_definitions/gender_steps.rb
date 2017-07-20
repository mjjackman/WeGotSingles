Given(/^there are some male customers$/) do
  @male = Customer.create!(:fname => "Sam", :lname => "Gamgee", :username => "IHeartFrodo", :gender => "male")
end

Given(/^there are some female customers$/) do
  @female = Customer.create!(:fname => "Elizabeth", :lname => "Windsor", :username => "GodSaveMe", :gender => "female")
end

When(/^they visit the search page$/) do
  visit users_search_path
end

When(/^they select a gender$/) do
  find(:css, "#gender_ids_[value='1']").set(true)
end

When(/^they click search$/) do
  click_on 'Search'
end

Then(/^they are redirected to the index page$/) do
  expect(page.current_path).to eq users_path
end

Then(/^they see only customers of the gender they selected$/) do
  expect(page.should have_content(@female.fname))
  expect(page.should have_no_content(@male.fname))
end