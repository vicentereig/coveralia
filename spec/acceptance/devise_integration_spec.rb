require 'acceptance/acceptance_helper'

feature 'Devise Integration' do

  background do
    @user = create(:user)
  end

  scenario 'A registered user signs in' do
    sign_in @user
    within('body') do
      page.should have_content 'AlbumOwnerships'
    end
  end

  scenario 'A signed in user signs out' do
    sign_in @user
    sign_out
    within('body') do
      page.should have_content 'You need to sign in or sign up before continuing.'
    end
  end

  scenario 'A user can sign up' do
    sign_up 'vicente.reig@ahorraralrepostar.com', 'super_secret'
    within('body') do
      page.should have_content 'Welcome! You have signed up successfully'
    end
  end
end
