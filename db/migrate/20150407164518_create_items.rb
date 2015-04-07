class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :category
      t.string :manufacturer
      t.string :picture
      t.integer :price
      t.string :name

      t.timestamps
    end
  end
end
