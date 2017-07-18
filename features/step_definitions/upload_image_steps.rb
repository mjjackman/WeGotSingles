Given(/^they have a profile gallery$/) do
  @profile_gallery = @customer.galleries.create!(:name => 'profile')
end

Given(/^they have another gallery$/) do
  @gallery2 = @customer.galleries.create!(:name => 'out with the lads!')
end

Given(/^they have a profile image$/) do
  @profile = @profile_gallery.images.create!(:image => "test_image")
end

When(/^they visit their edit gallery page$/) do
  visit edit_gallery_path(@gallery2)
end

When(/^they add an image$/) do
  page.attach_file("customer_image", Rails.root + 'spec/fixtures/files/cat_png.png') 
end

When(/^they add a gallery image$/) do
  page.attach_file("gallery_image", Rails.root + 'spec/fixtures/files/HomerSimpson25.gif') 
end

Then(/^the new image is added to their profile gallery$/) do
  expect(@profile_gallery.images.count).to eq 1
end

Then(/^the new image is added to their new gallery$/) do
  expect(@gallery2.images.count).to eq 1
end

Then(/^the new image is visible on their profile$/) do
  expect(page).to have_xpath("//img[contains(@src, 'HomerSimpson25.gif')]")
end

Then(/^their profile image is shown on their profile page$/) do
  expect(page).to have_xpath("//img[contains(@src, 'cat_png.png')]")
end