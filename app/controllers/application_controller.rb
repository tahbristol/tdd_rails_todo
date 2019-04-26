class ApplicationController < ActionController::Base

  def authenticate
    if !signed_in?
      redirect_to new_session_path
    end
  end
  
  def signed_in?
    current_email.present?
  end
  
  def current_email
    session[:current_email]
  end
  
  def sign_in_as(email)
    user = User.find_or_create_by(email: email)
    session[:current_email] = email
  end
  
  def current_user
    User.find_by(email: current_email)
  end
end
