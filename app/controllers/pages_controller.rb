class PagesController < ApplicationController

  def main
  end

  def email_submission
    email = params[:email]
    EmailSubmission.create(email: email)
    flash[:notice] = "Thanks for inquiring! You should receive an email soon."
    redirect_to action: "main"
  end

  def contact_submission
    name = params[:name]
    email = params[:email]
    message = params[:message]
    ContactSubmission.create(name: name, email: email, message: message)
    flash[:notice] = "Thanks for reaching out! We will reply as soon as we can."
    redirect_to action: "main"
  end

end
