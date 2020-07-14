
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end

  get '/show' do
    erb :show
  end

  get '/index' do
    erb :index
  end

  get '/articles/new' do
    erb :new
  end

  get '/articles' do
    @articles = Article.all
    erb :index
  end

  get '/articles/:id' do
<<<<<<< HEAD
    @article = Article.find(params[:id])
=======
    @article = Article.find([:id])
>>>>>>> 813dc1457ae31fe15ad2a3905005fd1fcf81293b
    erb :show
  end

  post '/articles' do
    @article = Article.create(params)
    redirect "/articles/#{@article.id}"
  end

  get '/articles/:id/edit' do
<<<<<<< HEAD
    @article = Article.find(params[:id])
    erb :edit
  end

  patch '/articles/:id' do
    @article = Article.find(params[:id])
    @article.update(title: params[:title], content: params[:content])
    redirect "/articles/#{@article.id}"
  end

  delete '/articles/:id' do
    @article = Article.find(params[:id])
    @article.destroy
    redirect "/articles"
  end
=======
    erb :edit
  end

  patch 'articles/:id' do
    erb :show
  end

  # delete '/articles/:id' do
>>>>>>> 813dc1457ae31fe15ad2a3905005fd1fcf81293b

end
