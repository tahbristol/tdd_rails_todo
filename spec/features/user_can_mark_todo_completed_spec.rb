require "rails_helper"

feature "User marks todo completed" do
  scenario "successfully", js: true do
    sign_in
    
    click_on "Add new todo"
    fill_in "todo[title]", with: "todo to complete"
    click_on "Create Todo"

    click_on "mark complete"
    todo = find('.completed')
    2.times do
      sleep(1)
    end
    expect(page).to have_css('li.completed') #have_css('.completed', text: "todo to complete")
  end
end