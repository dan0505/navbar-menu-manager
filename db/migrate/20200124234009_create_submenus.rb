class CreateSubmenus < ActiveRecord::Migration[6.0]
  def change
    create_table :submenus do |t|
      t.string :name
      t.integer :sort
      t.references :menu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
