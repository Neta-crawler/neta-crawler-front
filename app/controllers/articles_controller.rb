class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit]

  # GET /articles
  # GET /articles.json
  def index
    #@articles = Article.all
    @articles = Article.page(params[:page])
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:url, :title, :date, :html_body)
    end
end
