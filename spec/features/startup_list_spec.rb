require 'rails_helper'

describe "Startup list", :type => :feature do
  
  let(:user){ create(:user) }
  
  before(:each) do
    create(:startup_list)
  end

  it "lets me view them" do
    visit startup_list_path 
    expect(page).to have_content 'Castfire'
  end
  
  it "lets me start to create one" do
    visit "/"
    click_link "Resources"
    expect(page).to have_link 'New Startup'
  end
  
  it "let me create one" do
    visit "/"
    click_link "List"
    click_link 'New Startup'
    within("#new_startup_list") do
      fill_in "Name", with: "E8"
      fill_in "Url", with: "http://www.e8.com/"
      click_button 'Create Startup'
    end
    expect(page).to have_content("E8")
  end
end
