class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :url
      t.string :title
      t.datetime :date
      t.string :html_body

      t.timestamps
    end
  end
end
