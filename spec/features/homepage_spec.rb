require "spec_helper"
feature "Show text on homepage" do
  scenario "12 Question App with bootstrap" do
    visit "/"
    expect(page).to have_content("12 Question App with bootstrap")
  end
end
