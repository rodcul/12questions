require_relative '../helpers/session'
include Session

feature 'user signs out' do
  scenario 'successfully' do
    sign_up
    expect(page).to have_content('test@test.com')
    click_button('Sign out')
    expect(page).to have_content('Signed out')
    expect(page).not_to have_content('test@test.com')
  end
end
