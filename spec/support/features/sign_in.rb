module Features
  def sign_in
    visit root_path
    
    fill_in "session[email]", with: "person@example.com"
    click_on "Sign in"
  end
end