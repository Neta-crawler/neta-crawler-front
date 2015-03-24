class ChangeColumnDataType < ActiveRecord::Migration
  def change
     change_column :articles, :title, :text
     change_column :articles, :url, :text
     change_column :articles, :html_body, :text
  end
end
