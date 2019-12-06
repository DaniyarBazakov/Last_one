class HorribleFactMailer < ApplicationMailer
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.horrible_fact_mailer.scareuser.subject
  #
  def scareuser
    @user = params[:user] # Instance variable => available in view
    @horrible_fact = HorribleFact.all.sample(1)[0]
    @horriblefactphoto = @horrible_fact.photo
    @horriblefacttext = @horrible_fact.fact
    mail(to: @user.email, subject: 'Stop smoking !!!')
    # mail(to: 'jovialiste82@yahoo.fr', subject: 'Stop smoking !!!')
    # This will render a view in `app/views/horrible_fact_mailer`!
  end

  def scare_again_user
    @user = params[:user] # Instance variable => available in view
    @horrible_fact = HorribleFact.all.sample(1)[0]
    @horriblefactphoto = @horrible_fact.photo
    @horriblefacttext = @horrible_fact.fact
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
