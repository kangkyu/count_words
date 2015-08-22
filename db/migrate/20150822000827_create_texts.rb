class CreateTexts < ActiveRecord::Migration
  def change
    create_table :texts do |t|
      t.string :title
      t.text :body
      t.text :count_hash

      t.timestamps null: false
    end
  end
end
