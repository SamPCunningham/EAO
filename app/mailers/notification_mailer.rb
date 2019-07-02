class NotificationMailer < ApplicationMailer
  default from: "no-reply@eatinout-sam-cunningham.herokuapp.com"

  def comment_added(comment)
    @place = comment.place
    @place_owner = @place.user
    mail(to: @place_owner.email,
          subect: "A comment has been added to #{@place.name}")
  end
end
