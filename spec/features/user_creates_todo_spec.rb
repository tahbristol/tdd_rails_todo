require 'rails_helper'

feature "User creates todo" do
  scenario "successfully" do
    
    sign_in
    
    
    create_todo "This is a todo"
    
    expect(page).to display_todo "This is a todo"
  end
end