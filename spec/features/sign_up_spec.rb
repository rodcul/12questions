require 'spec_helper'
feature 'Show flash alerts' do
  scenario 'user signup successful' do
    sign_up
    expect(page).to have_content('User signup successful')
  end

  scenario 'error message on signup with existing email' do
    sign_up
    sign_up
    expect(page).to have_content('Email is already taken')
  end
end
