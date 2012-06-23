module HelperMethods
  # Put helper methods you need to be available in all acceptance specs here.
  def sign_in(user, password="1337s3cr3t")
    visit '/users/sign_in'
    fill_in "user[email]",    with: user.email
    fill_in "user[password]", with: password
    click_button "Sign in"
  end

  def sign_out
    visit '/users/sign_out'
  end

  def sign_up(email, password, password_confirmation=nil)
    visit '/users/sign_up'
    fill_in 'user[email]',    with: email
    fill_in 'user[password]', with: password
    fill_in 'user[password_confirmation]', with: password_confirmation || password
    click_button 'Sign up'
  end
end

RSpec.configuration.include HelperMethods,       :type => :acceptance
