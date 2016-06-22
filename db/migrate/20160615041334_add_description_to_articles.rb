class AddDescriptionToArticles < ActiveRecord::Migration
  def change
    
    add_column :articles, :description, :text #recibe nombre de la tabla, atributo, tipo
    add_column :articles, :created_at, :datetime
    add_column :articles, :updated_at, :datetime
  
  end
end
