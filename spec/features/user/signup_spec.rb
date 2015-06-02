require_relative '../helpers/session.rb'
include Session

feature 'user signs up' do
  scenario 'as a new user of the website' do
    expect { sign_up }.to change(User, :count).by(1)
    expect(page).to have_content('Welcome, test@test.com')
  end

  scenario 'with no password, gets error' do
    visit '/'
    expect(page).not_to have_content('user02')
    click_link('Sign up')
    fill_in('email', with: 'user02@test.com')
    click_button('Sign up')
    expect(page).to have_content('Password digest must not be blank')
  end

  scenario 'with no email, gets error' do
    visit '/'
    expect(page).not_to have_content('user02')
    click_link('Sign up')
    fill_in('password', with: 'password')
    click_button('Sign up')
    expect(page).to have_content('Email must not be blank')
  end
end
