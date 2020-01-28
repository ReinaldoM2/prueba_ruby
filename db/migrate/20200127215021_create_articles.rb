class CreateArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :articles do |t|
      t.string :tittle
      t.string :body
      t.integer :visit_count

      t.timestamps
    end
  end
end
