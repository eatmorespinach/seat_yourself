class BookingMailer < ActionMailer::Base
  default from: "from@example.com"

  def booked_email(user)
  
  @user = user
  	@url = 'http://google.com'

  	mail(to: @user.email, subject: "Welcome to My Awesome Site")
  end	
end
