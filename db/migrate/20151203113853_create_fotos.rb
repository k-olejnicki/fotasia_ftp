class CreateFotos < ActiveRecord::Migration
  def change
    create_table :fotos do |t|
      t.string :title
      t.date :date
      t.text :content
      t.integer :user_id
      t.string :username
      t.attachment :image

      t.timestamps null: false
    end
  end
end
