Given(/^they have a profile gallery$/) do
  @profile_gallery = @customer.galleries.create!(:name => 'profile')
end

When(/^they add an image$/) do
  page.attach_file("customer_image", Rails.root + 'spec/fixtures/files/cat_png.png') 
end

Then(/^their profile image is added to profile gallery$/) do
  expect(@profile_gallery.images.count).to eq 1
end

Then(/^their profile image is shown on their profile page$/) do
  save_and_open_page
  expect(page).to have_xpath("//img[contains(@src, 'cat_png.png')]")
end