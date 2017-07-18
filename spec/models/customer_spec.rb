require 'rails_helper'

RSpec.describe Customer, type: :model do
  describe 'percentage completed-ness for Customer' do
    before do 
      @customer = Customer.new(fname: "John", lname: "Smith", username: "smiffy", drinker: true)
    end

    it 'returns the profile completed-ness as an number out of 100' do
      expect(@customer.perc_complete).to eq 40.0
    end
  end
end
