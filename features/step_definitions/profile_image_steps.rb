Given(/^they have a profile image$/) do
  @profile = @profile_gallery.images.create!(:image => "test profile image", :set_profile => true)
end

Then(/^their profile image is added to profile gallery$/) do
  expect(@profile_gallery.images.count).to eq 2
end

Then(/^their image is set to be the new profile image$/) do
  expect(@profile_gallery.images.first.set_profile).to eq false
  expect(@profile_gallery.images.last.set_profile).to eq true
end