require "rails_helper"

feature "User marks todo completed" do
  scenario "successfully", js: true do
    sign_in
    
    create_todo "Buy milk"

    click_on "mark complete"
    todo = find('.completed')

    expect(page).to display_completed_todo("Buy milk")
  end
end