require_relative '../helpers/session.rb'
include Session

feature 'User signs up' do
  scenario 'as a new user of the website' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, test@test.com')
  end
end
