get '/' do
  File.read(File.join('app/views', 'index.html'))
end

get '/experindex' do
  File.read(File.join('app/views', 'experindex.html'))
end