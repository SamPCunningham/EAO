class NotificationMailer < ApplicationMailer
  default from: "no-reply@eatinout-sam-cunningham.herokuapp.com"

  def comment_added
    mail(to: "my@email.com",
          subect: "A comment has been added to your place")
  end
end
