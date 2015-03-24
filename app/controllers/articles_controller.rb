class ArticlesController < ApplicationController
  before_action :set_article, only: [:show]

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
  
  def previousPage
    previousId = getPrevious(params[:id])
    redirect_to :action => "show", :id => previousId
  end
  
  def nextPage
    nextId = getNext(params[:id])
    redirect_to :action => "show", :id => nextId
  end

  private
    def getPrevious(id)
      articleId = id.to_i
      while articleId >= 1 do
        articleId -=1
        begin
          if Article.find(articleId) != nil
            return articleId
          end
        rescue
        end
      end
      return id
    end
    
    def getNext(id)
      articleId = id.to_i
      while articleId < Article.maximum('id') do
        articleId +=1
        begin
          tempArticle = Article.find(articleId)
          if tempArticle != nil
            return articleId
          end
        rescue
        end
      end
      return id
    end
  
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:url, :title, :date, :html_body)
    end
end
