require 'rails_helper'

describe 'the log in process' do
  it 'will log a user in' do
    visit new_user_session_path
    user = FactoryGirl.create(:user)
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully.'
  end

  it 'will log out a user' do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit root_path
    click_on 'Logout'
    expect(page).to have_content 'Signed out successfully.'
  end
end
