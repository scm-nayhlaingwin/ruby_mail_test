class UserMailer < ApplicationMailer
    def welcome_email(user)
        @user = user
        Rails.logger.info @user
        mail(to: @user.email, subject: 'Welcome to My Awesome Site')
    end
    
end
