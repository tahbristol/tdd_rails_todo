module Features
  def create_todo(title)
    click_on "Add new todo"
    fill_in "todo[title]", with: title
    click_on "Create Todo"
  end
  
  def display_todo(title)
    have_css('.todos li', text: title)
  end
end