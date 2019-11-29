class HorribleFact < ApplicationRecord




  def notify
    # "User.first" for testing purposes, to be replaced by "current_user"
    mail = HorribleFactMailer.with(user: User.first).scareuser
    mail.deliver_now
  end



end
