class RemoveCategoryFromArticles < ActiveRecord::Migration
  def up
    remove_column :articles, :category
  end
end
