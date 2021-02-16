class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      #redirect_to will cause the broser to maje a new request
      redirect_to @article
    else
      #render renders thr specified view for the current request
      render :new
    end
  end

  private 
    def article_params
      params.require(:article).permit(:title, :body)
    end 
end
