require 'acceptance/acceptance_helper'

feature 'Search albums' do

  background do
    @user = create(:user_with_album_ownerships)
  end

  scenario 'Need to be signed up to search' do
    visit '/album_ownerships'
    within('body') do
      page.should have_content 'You need to sign in or sign up before continuing.'
    end
  end

  scenario 'searching Mumford & Sons inside my music collection' do
    sign_in @user
    fill_in 'Album Artist contains', with: 'Mumford & Sons'
    click_button 'Search'

    within('body/table') do
      page.should have_content 'Sigh No More'
    end
  end

  scenario 'searching for Mogwai - The Hawk Is Howling' do
    sign_in @user
    fill_in 'Album Artist contains', with: 'Mogwai'
    fill_in 'Album Title contains',  with: 'Hawk Is Howling'
    click_button 'Search'
    within('body/table') do
      page.should have_content 'The Hawk Is Howling'
    end
  end

end
