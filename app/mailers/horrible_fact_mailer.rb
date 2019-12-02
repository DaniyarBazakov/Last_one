class HorribleFactMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.horrible_fact_mailer.scareuser.subject
  #
  def scareuser
    @user = params[:user] # Instance variable => available in view
    @horriblefactphoto = HorribleFact.all.sample(1)[0].photo
    @horriblefacttext = HorribleFact.all.sample(1)[0].fact
    mail(to: @user.email, subject: 'Stop smoking !!!')
    # mail(to: 'jovialiste82@yahoo.fr', subject: 'Stop smoking !!!')
    # This will render a view in `app/views/horrible_fact_mailer`!
  end

   # def scareuser
   #    user = User.all.sample(1)[0]  VS  user = User.first
   #    # This is how you pass value to params[:user] inside mailer definition!
   #    HorribleFactMailer.with(user: user).scareuser
   # end
end
