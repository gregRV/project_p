enable :sessions

get '/' do
	@pogs = Pog.all
	erb :index
end

############################################
############################################

#--- USERS
get '/users/new' do
	erb :'users/new'
end

post '/users' do
	@user = User.create(params[:user])
	session[:user_id] = @user.id
	redirect '/'
end

get '/users/:id' do |id|
	@user = User.find(id)
	erb :'users/show'
end

############################################
############################################

#--- SESSIONS
get '/sessions/new' do
	erb :'sessions/new'
end

post '/sessions' do
	@user = User.find_by_email(params[:user][:email])
	unless @user.nil?
		if @user.password == params[:user][:password]
			session[:user_id] = @user.id
		end
	end
	redirect "/users/#{@user.id}"
end

get '/sessions/logout' do
	session.clear
	redirect '/'
end

############################################
############################################

#--- POGS
get '/pogs/new' do
	@user_id = current_user.id
	erb :'pogs/new'
end

post '/pogs' do
	@user = current_user #maybe get rid of this line for 'current_user'
	params[:pog].each {|pog| @user.pogs << Pog.create(pog)}
	content_type :json
	{url: "/users/#{@user.id}"}.to_json
end

get '/pogs/:id'	do |id|
	@pog = Pog.find(id)
	@creator = User.find(@pog.creator_id)
	erb :'pogs/show'
end

post '/pogs/partial' do
	erb :_new_pog, :layout => false
end

get '/pogs_img' do
	pog = Pog.find(params[:id])
	puts "POG: #{pog.name}"
	content_type :json
	{name: pog.name, url: pog.img_url}.to_json
end

############################################
############################################

#--- GAMES
get '/games/new' do
	@pogs = current_user.pogs
	erb :'games/new'
end






