class NotifyJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later

    UserMailer.scareuser

  end
end
