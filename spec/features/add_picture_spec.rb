require 'rails_helper'
describe "add picture path" do
  it "lets user add an image" do
    user = FactoryGirl.create(:user)
    login_as(user, :scope => :user)
    visit new_user_picture_path(:user)
    attach_file 'Image', fixture_image_path
    click_button 'Create Picture'
    page.should have_xpath("//img[contains(@src, 'missing.png')]")
  end

  def fixture_image_path
    Rails.root.join('spec', 'support', 'missing.png')
  end
end
