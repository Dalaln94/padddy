class CreateSearchCounts < ActiveRecord::Migration
  def change
    create_table :search_counts do |t|
      t.integer :counter

      t.timestamps
    end
  end
end
