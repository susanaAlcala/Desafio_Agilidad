class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.boolean :sold, default: false
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
