require 'rails_helper'

describe "edit profile path" do
  it "lets user edit their profile" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit edit_user_registration_path
    fill_in 'Email', with: user.email
    fill_in 'Password', with: "12345678"
    fill_in 'Password confirmation', with: "12345678"
    fill_in 'Current password', with: user.password
    click_button 'Update'
    expect(page).to have_content 'Your account has been updated successfully.'
  end
end
