Given(/^they are registered$/) do
  @customer = Customer.create!(fname: "Boris", lname: "Becker", username: "iheartwimbledon", bio: "I am cool. go out with me.")
end

Given(/^they are logged in$/) do
  page.set_rack_session({ "warden.user.customer.key" => [[@customer.id], "some stuff"] })
end

Given(/^they have a bio$/) do
  expect(@customer.bio.present?).to eq true
end

When(/^they visit the edit profile page$/) do
  visit edit_user_path(@customer.username)
end

When(/^they edit the bio field$/) do
  fill_in 'Bio', :with => "I am even better than before!!"
end

When(/^they submit changes$/) do
  click_on 'Update'
end

Then(/^their bio is updated$/) do
  @customer.reload
  expect(@customer.bio).to eq "I am even better than before!!"
end