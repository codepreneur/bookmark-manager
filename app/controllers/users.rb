
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

get '/users/reset_password' do
	erb :"password/new"
end

get '/users/email' do
	erb :email
end 


post '/users/send_recovery_email' do
	email = params[:email]
	"Check your #{email} email!"
	user = User.first(:email => email)
	if user
		# avoid having to memorise ascii codes
		user.password_token = (1..64).map{('A'..'Z').to_a.sample}.join
		user.password_token_timestamp = Time.now
		user.save
		url = "http://localhost:9393/users/reset_password?token=#{user.password_token}"
		send_recovery_email(email,url)
	end
end


post '/users/change_password' do
	params[:new_password]
	params[:confirm_new_password]
end







