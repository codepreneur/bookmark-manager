
get '/users/new' do
	@user = User.new
	erb :"users/new", :layout => !request.xhr?
end

post '/users' do
	@user = User.new(:email => params[:email], :password => params[:password], :password_confirmation => params[:password_confirmation])

	if @user.save
		session[:user_id] = @user.id
		redirect to('/')
	else
		flash.now[:errors] = @user.errors.full_messages
		erb :"users/new"
	end

end

get '/users/reset_password/:token' do
	erb :"password/new"
end

get '/users/email' do
	
	erb :email
end 

post '/users/send_recovery_email' do
	"Check your #{params[:email]} email!"
end

post '/send_recovery_email' do
  pry.binding
	def send_simple_message
	  RestClient.post "https://api:key-3ax6xnjp29jd6fds4gc373sgvjxteol0"\
	  "@api.mailgun.net/v2/samples.mailgun.org/messages",
	  :from => "Excited User <me@samples.mailgun.org>",
	  :to => "bar@example.com, baz@example.com",
	  :subject => "Hello",
	  :text => "Testing some Mailgun awesomness!"
	end

end
