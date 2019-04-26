require 'rails_helper'

feature "User creates todo" do
  scenario "successfully" do
    
    sign_in
    
    
    click_on "Add new todo"
    fill_in "todo[title]", with: "This is a todo"
    click_on "Create Todo"
    
    expect(page).to have_css('.todos li', text: 'This is a todo')
  end
end