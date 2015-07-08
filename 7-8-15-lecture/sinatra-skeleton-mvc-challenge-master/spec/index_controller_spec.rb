require_relative 'spec_helper'

describe 'articles controller' do
  describe "GET /articles" do
    it "responds with a successful status" do
      #given
        # that these things happen
        #OR
        #that this world exists
      #can probably skip the given here because we know this is a server environment
      #when
        #making a GET request to the /articles route
        get '/articles'
        #we do this thing
      #then
        #this should happen or have happened
        expect(last_response.status).to eq(200)
    end
  end
 
#Test only one block
#be rspec spec/index_controller_spec.rb:23
  describe 'GET /articles/:id' do
    it 'responds with a successful status' do
      #given
      article = Article.create(title: "My Article")
      #when
      get "/articles/#{article.id}"
      #then
      expect(last_response.status).to eq(200)
    end
  end

  describe 'POST /articles' do
    it 'creates a new article' do
      #given
      count = Article.count
      #when
      expect {
        post "/articles", title: "The newest article"
      }.to change{ Article.count }.by(1)
      #expect(count_after)
      #count_after = Article.count
    end
  end
end
