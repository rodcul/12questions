require_relative '../helpers/sign_up.rb'
include SignUp

feature 'user signs out' do
  scenario 'successfully' do
    sign_up
    expect(page).to have_content('test@test.com')
    click_button('Sign out')
    expect(page).to have_content('Signed out')
  end
end
