get '/' do
  File.read(File.join('app/views', 'index.erb'))
  erb(:index)
end

get '/experindex' do
  File.read(File.join('app/views', 'experindex.html'))
end