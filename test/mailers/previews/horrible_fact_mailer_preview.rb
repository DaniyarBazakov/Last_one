# Preview all emails at http://localhost:3000/rails/mailers/horrible_fact_mailer
class HorribleFactMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/horrible_fact_mailer/scareuser
  # def scareuser
  #   HorribleFactMailer.scareuser
  # end

   def scareuser
      user = User.all.sample(1)[0] # alt User.first
      # This is how you pass value to params[:user] inside mailer definition!
      HorribleFactMailer.with(user: user).scareuser
   end


end
