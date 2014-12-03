require 'rails_helper'

RSpec.describe StartupList, :type => :model do
   context "validation" do
    subject{ build(:startup_list) }
    it {should be_valid}
    it "should require a url" do
      expect(
      build(:startup_list, url: nil)
      ).not_to be_valid
    end
    it "should require a name" do
      expect(
      build(:startup_list, name: nil)
      ).not_to be_valid
    end    
  end
end
