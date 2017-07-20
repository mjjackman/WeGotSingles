Then(/^they see how much they have completed$/) do
  expect(page).to have_content("40.0% Completed")
end