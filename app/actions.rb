helpers do
  def current_user
    User.find_by(id: session[:user_id])
  end
end

get '/' do
  @finstagram_posts = FinstagramPost.order(created_at: :desc)
  erb(:index)
end

get '/experindex' do
  @finstagram_posts = FinstagramPost.order(created_at: :desc)
  erb(:experindex) 
end

get '/signup' do     # if a user navigates to the path "/signup",
  @user = User.new   # setup empty @user object
  erb(:signup)       # render "app/views/signup.erb"
end

post '/signup' do
  # grab user input values from params
  email      = params[:email]
  avatar_url = params[:avatar_url]
  username   = params[:username]
  password   = params[:password]

  # instantiate a User
  @user = User.new({ email: email, avatar_url: avatar_url, username: username, password: password })

  # if user validations pass and user is saved
  if @user.save
    redirect to('/login')
  else
    erb(:signup)
  end
end

get "/login" do
  erb(:login)
end

post '/login' do
  username = params[:username]
  password = params[:password]

  @user = User.find_by(username: username)

  if @user && @user.password == password
    session[:user_id] = @user.id
    redirect to('/')
  else
    @error_message = "Login failed."
    erb(:login)
  end
end

get '/logout' do
  session[:user_id] = nil
  redirect to('/')
end

get '/finstagram_posts/new' do
  @finstagram_post = FinstagramPost.new
  erb(:"finstagram_posts/new")
end

post '/finstagram_posts' do
  photo_url = params[:photo_url]

  # instantiate new FinstagramPost
  @finstagram_post = FinstagramPost.new({ photo_url: photo_url, user_id: current_user.id })

  # if @post validates, save
  if @finstagram_post.save
    redirect(to('/'))
  else
    # if it doesn't validate, print error messages
    erb(:"finstagram_posts/new")
  end
end

get '/finstagram_posts/:id' do
  # find the finstagram post with the ID from the URL
  @finstagram_post = FinstagramPost.find(params[:id]) 
  # render app/views/finstagram_posts/show.erb
  erb(:"finstagram_posts/show")               
end