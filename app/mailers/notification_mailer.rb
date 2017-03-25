class NotificationMailer < ApplicationMailer
    default from: "no-reply@truvegapp.com"
    
    def comment_added
        mail(to: "reneersandefur@gmail.com",
        subject: "A comment has been added to your place")
    end
end
