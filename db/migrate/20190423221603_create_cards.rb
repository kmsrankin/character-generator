class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :name, null: false
      t.text :flavor_text

      t.timestamps null: false
    end
  end
end
