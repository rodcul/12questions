require 'spec_helper'
feature 'Show flash alerts' do
  scenario 'user signup successful' do
    sign_up
    expect(page).to have_content('User signup successful')
  end
end
