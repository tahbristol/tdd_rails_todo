require "rails_helper"

feature "User marks todo completed" do
  scenario "successfully", js: true do
    sign_in
    
    create_todo "Buy milk"

    click_on "mark complete"
    todo = find('.completed')

    expect(page).to have_css('.todos li.completed') #have_css('.completed', text: "todo to complete")
  end
end