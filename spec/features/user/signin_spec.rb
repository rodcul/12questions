require_relative '../helpers/session.rb'
include Session

feature 'user signs in' do
   before(:each) do
      User.create(first_name: 'John',
                  last_name: 'White',
                  email: 'test@test.com',
                  password: '123',
                  password_confirmation: '123',
                  team: 'team1')
    end
  scenario 'as a returning user' do
    visit('/');
    expect(page).not_to have_content('Welcome, test@test.com');
    click_link('Sign in')
    sign_in('test@test.com', '123')
    save_and_open_page
    expect(page).to have_content('Welcome, test@test.com')
  end
end
