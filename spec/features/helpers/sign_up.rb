module Sign_up
  def sign_up(first_name = 'John', last_name = 'White',  email = 'test@test.com', team = 'team1', password = '123', password_confirmation = '123')
    visit 'users/new'
    fill_in :first_name, with: first_name
    fill_in :last_name, with: last_name
    fill_in :team, with: team
    fill_in :email, with: email
    fill_in :password, with: password
    fill_in :password_confirmation, with: password_confirmation
    click_button 'Sign up'
  end
end
