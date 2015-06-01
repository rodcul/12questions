require "spec_helper"
feature 'capybara and rspec generate passes' do
  scenario 'when running a scenario' do
    expect(true).to eq(true)
  end
end
