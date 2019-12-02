class NotifyJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later

    HorribleFactMailer.scareuser

  end
end
