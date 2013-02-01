class SendTextController < ApplicationController
  def index
  end
 
  def send_text_message
    number_to_send_to = params[:number_to_send_to]
 
    twilio_sid = "AC48862aae33d9008c8def5e5b1c2452fd"
    twilio_token = "1ca73052c50e98e81b98a2bf6bed4b4d"
    twilio_phone_number = "+1#{512-942-2165}"
 
    @twilio_client = Twilio::REST::Client.new twilio_sid, twilio_token
 
    @twilio_client.account.sms.messages.create(
      :from => "+1#{512-942-2165}",
      :to => +919032955216,
      :body => "This is an message. It gets sent to #{number_to_send_to}"
    )
  end
end
