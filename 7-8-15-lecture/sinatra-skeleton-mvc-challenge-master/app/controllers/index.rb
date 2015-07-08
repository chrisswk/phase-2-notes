get '/articles' do

end

get '/articles/:id' do

end

post '/articles' do
  Article.create(title: params[:title])
end