class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.text :content
      t.decimal :price, default: 0, :scale => 2, :precision =>8
      t.integer :buyer, default: 0
      t.string :data_file
      t.string :manufacturer
      t.references :category, foreign_key: true
      t.boolean :published, default: true
      t.string :tags
      t.string :language
      t.string :slug

      t.timestamps
    end
  end
end
