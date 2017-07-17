Given(/^there are some religions$/) do
  @atheist = Religion.create!(:name => "Atheist")
  @jedi = Religion.create!(:name => "Jedi")
end

When(/^they select a religion$/) do
  # save_and_open_page
  select @atheist.name, :from => 'customer[religion_id]'
  click_on 'Update'
end

Then(/^their religious belief is updated$/) do
  expect(@customer.religion_id).to eq @atheist.id
end

Then(/^they are redirected to their profile page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^their religious belief is shown on their profile page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end