class ArticlesController < ApplicationController
  
  def new
    @article = Article.new
  end
  
  def create 
    #render plain: params[:article].inspect # al ponerle el inspect lo muestra
    #obtiene los parametros que le pasamos por post
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_show(@article)
  end
  
  private
  def article_params
    params.require(:article).permit(:title, :description)
  end
  
  def show
  end
  
end