require_relative '../helpers/sign_up.rb'
include Sign_up

feature 'user signs up' do
  scenario 'as a new user of the website' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, test')
  end
end
