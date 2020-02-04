class ChangeDaataType < ActiveRecord::Migration[6.0]
  def change
    change_column :articles, :name , :string
    change_column :articles, :brand , :string
    change_column :articles, :price , :integer 
  end
end
