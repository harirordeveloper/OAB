require 'net/http'
require 'uri'

class SmsIntegration
 def initialize(mobile_no,message)
	 @user="kumar.ch";   #your username
    @password="smscountry";  #your password
    @mobilenumbers=mobile_no;  #enter Mobile numbers comma seperated
    @message = message;    # "MESSAGE";  #enter Your Message 
    @senderid="DEMO";  #Your senderid
    @messagetype="N";  #Type Of Your Message
    @DReports="Y";  #Delivery Reports
    @workingkey="184947iqq02v3744767w"
 end
 
  def sendSMS()
	
    url=URI.parse("http://promo.sinfini.com/api/web2sms.php");
    request = Net::HTTP::Post.new(url.path)
    request.set_form_data({'workingkey' => @workingkey,'to'=>@mobilenumbers, 'message'=>@message, 'sender'=>'BULKSMS' })
    response = Net::HTTP.new(url.host, url.port).start {|http| http.request(request) }
    # If U are Behind The Proxy Comment Above Line And  Uncomment Below Line, Give The Proxy Ip & Port
    #response = Net::HTTP::Proxy("PROXY IP", PROXYPORT).new(url.host, url.port).start {|http| http.request(request) }
     
    case response
      when Net::HTTPSuccess
        puts response.body
      else
         response.body
         response.error!
    end
  end
end


