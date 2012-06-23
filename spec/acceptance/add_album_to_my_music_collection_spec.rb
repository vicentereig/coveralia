require 'acceptance/acceptance_helper'

feature 'Add album to my music collection' do

  background do
    @user = create(:user)
  end

  scenario 'Add Stealers Wheel to my Music Collection' do
    sign_in @user
    click_link 'Add An Album'

    fill_in 'Artist', with: 'Stealers Wheel'
    fill_in 'Title',  with: 'Stuck In The Middle With You'
    click_button "Add to your collection"

    within('body') do
      page.should have_content 'Stealers Wheel - Stuck In The Middle With You was successfully added.'
    end
  end

end
