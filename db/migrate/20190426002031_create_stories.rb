class CreateStories < ActiveRecord::Migration[5.2]
  def change
    create_table :stories do |t|
      t.string :name, null: false
      t.string :theme

      t.timestamps null: false
    end
  end
end
