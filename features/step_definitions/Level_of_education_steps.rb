When(/^there are some education levels$/) do
  @phd = Education.create!(level: "PHD")
  @masters = Education.create!(level: "Masters")
end

When(/^they select a education level$/) do
  select @phd.level, :from => "customer[education_id]"
end

Then(/^their education in updated$/) do
  @customer.reload
  expect(@customer.education.level).to eq "PHD"
end