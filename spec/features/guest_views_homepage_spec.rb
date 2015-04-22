require 'spec_helper'

feature "a guest views homepage" do 
  scenario "and sees the name of the website" do
    visit root_path 

    expect(page).to have_content "Welcome to Local Guide!"
    expect(page).to have_content "Sign in with Facebook"
  end
end
