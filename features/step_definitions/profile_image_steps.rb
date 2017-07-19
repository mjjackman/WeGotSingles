Given(/^they have a profile gallery$/) do
  @profile_gallery = @customer.galleries.create!(:name => 'profile')
end

Given(/^they have a profile image$/) do
  @profile_gallery.images.create!(:image => "test profile image", :set_profile => true)
end

When(/^they add an image$/) do
  page.attach_file("customer_image", Rails.root + 'spec/fixtures/files/cat_png.png') 
end

Then(/^their profile image is added to profile gallery$/) do
  expect(@profile_gallery.images.count).to eq 2
end

Then(/^their image is set to be the new profile image$/) do
  expect(@profile_gallery.images.first.set_profile).to eq false
  expect(@profile_gallery.images.last.set_profile).to eq true
end

Then(/^their profile image is shown on their profile page$/) do
  expect(page).to have_xpath("//img[contains(@src, 'cat_png.png')]")
end