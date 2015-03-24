class ChangeColumnDataType2 < ActiveRecord::Migration
  def change
    
     change_column :articles, :title, :text, :limit => nil
     change_column :articles, :url, :text, :limit => nil
     change_column :articles, :html_body, :text, :limit => nil
  
  end
end
