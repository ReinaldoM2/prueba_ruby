class ChangeColumName < ActiveRecord::Migration[6.0]
  def change
    rename_column :articles , :tittle      , :name
    rename_column :articles , :body        , :brand
    rename_column :articles , :visit_count , :price
  end
end
