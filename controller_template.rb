class ArticlesController < ApplicationController
  before_action :set_article, :only=> [:show, :edit, :update, :destroy]


  def index
    @articles = Article.all
  end


  def show
  end

  def new
    @article = Article.new
  end


  def edit
  end

  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, notice: 'Article was successfully created.' }
        format.js { render :create }
      else
        format.html { render :new }
        format.js { render :error }
      end
    end
  end


  def update
    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.js { render :update }
      else
        format.html { render :edit }
        format.js { render :error }
      end
    end
  end


  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Article was successfully destroyed.' }
      format.js { render :destroy }
    end
  end

  private

    def set_article
      @article = Article.find(params[:id])
    end


    def article_params
      params.require(:article).permit(:body, :title)
    end

end
