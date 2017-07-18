Given(/^there is someone else's profile$/) do
  @customer2 = Customer.create!(fname: "Sue", lname: "blogs", username: "Suzy")
end

When(/^they visit someone else's profile$/) do
  visit "/users/suzy"
end

Then(/^they can see the persons profile page$/) do

  expect(@customer2.fname).to eq "Sue"
end