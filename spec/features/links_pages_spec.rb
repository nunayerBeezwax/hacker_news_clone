require 'spec_helper'

describe "the link creation process", :type => :feature do
  context 'creating' do
    it 'lets a user view the links and new link pages' do
      visit links_path
      page.should have_content 'Links'
      visit new_link_path
      page.should have_content 'Add a Link'
    end

    it 'lets a user create a new link' do
      visit new_link_path
      fill_in 'Address', :with => 'http://www.google.com'
      click_button 'Create Link'
      visit root_path
      page.should have_content 'http://www.google.com'
    end


  end
end
