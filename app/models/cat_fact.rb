class CatFact < ApplicationRecord
  after_create :send_sms
  
  def send_sms
    client = Twilio::REST::Client.new
      client.messages.create(
          from: "+15644655106",
          to: "+447867513304",
          body: self.fact
      )
  end
end
