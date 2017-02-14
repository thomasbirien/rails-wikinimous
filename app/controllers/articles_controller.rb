class ArticlesController < ApplicationController
    before_action :find_article_id, only: [:show, :edit, :update, :destroy]
  def index
    @article = Article.all
  end

  def show
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to articles_path(@article)
  end

  def edit
  end

  def update
    @article.update(article_params)
    redirect_to articles_path(@article)
  end

  def destroy
    @article.destroy
    redirect_to articles_path(@article)
  end

  private
  def find_article_id
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:name, :content)
  end

end
