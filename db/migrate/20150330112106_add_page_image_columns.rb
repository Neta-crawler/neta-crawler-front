class AddPageImageColumns < ActiveRecord::Migration
  def change
    add_column :articles, :pageImage, :string, :after => :category
  end
end
