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
  @customer.reload
  expect(@customer.religion).to eq @atheist
end

Then(/^they are redirected to their profile page$/) do
  expect(page.current_path).to eq customer_path(@customer)
end

Then(/^their religious belief is shown on their profile page$/) do
  expect(page.has_content?(@atheist.name))
end