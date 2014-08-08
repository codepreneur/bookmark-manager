
API_KEY = ENV['MAILGUN_API_KEY']

def send_recovery_email(email, url)
	puts "----------------------------"
	puts API_KEY

	uri = "https://api:#{API_KEY}@api.mailgun.net/v2/app26507497.mailgun.org/messages"
  RestClient.post uri,
  :from => "Very Excited User <me@app26507497.mailgun.org>",
  :to => email,
  :subject => "Password reset",
  :text => url
end


