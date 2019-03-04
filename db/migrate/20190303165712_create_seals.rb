class CreateSeals < ActiveRecord::Migration[5.2]
  def change
    create_table :seals do |t|
      t.string :sku
      t.string :name
      t.references :category, foreign_key: true
      t.string :photo_url

      t.timestamps
    end
  end
end
