class CreateBlocks < ActiveRecord::Migration[6.1]
  def change
    create_table :blocks do |t|
      t.integer :height
      t.boolean :parsed, :default => false

      t.timestamps
    end
  end
end
