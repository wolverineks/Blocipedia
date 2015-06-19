require 'rails_helper'
 
include TestFactories

describe "sign out flow" do
  
  it "signs user in and out" do
    user = authenticated_user

    visit root_path
      
    within '.user-info' do
      click_link 'Sign In'
    end
     
    fill_in 'Email', with: user.email
    fill_in 'Password', with: user.password

    within 'form' do
      click_button 'Sign in'
    end
   
    expect(current_path).to eq root_path
    expect( page ).to have_content( user.email )

    within '.user-info' do
      click_link 'Sign out'
    end

    expect(current_path).to eq root_path
    expect( page ).to have_content( "Sign In" )

  end
end
