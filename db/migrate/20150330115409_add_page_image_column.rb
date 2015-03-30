class AddPageImageColumn < ActiveRecord::Migration
  def change
    remove_column :articles, :pageImage, :string
    add_column :articles, :page_image, :string, :after => :category
  end
end
