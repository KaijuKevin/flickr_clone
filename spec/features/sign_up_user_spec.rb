require 'rails_helper'

describe 'sign up process' do
  it 'signs up a user' do
    visit root_path
    click_on 'Sign up'
    user = FactoryGirl.build(:user)
    fill_in 'Password', with: user.password
    fill_in 'Email', with: user.email
    fill_in 'Password confirmation', with: user.password
    click_button 'Sign up'
    expect(page).to have_content "Welcome! You have signed up successfully."
  end
end
