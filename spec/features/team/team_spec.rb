require_relative '../helpers/sign_up.rb'
include SignUp

feature 'Managing team members' do
  xscenario 'show form' do
    sign_up
    click_button('Add member')
    expect(page).to have_content('Name')
  end
end
