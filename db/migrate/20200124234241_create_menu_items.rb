class CreateMenuItems < ActiveRecord::Migration[6.0]
  def change
    create_table :menu_items do |t|
      t.string :name
      t.text :link
      t.integer :sort
      t.references :menu, null: false, foreign_key: true
      t.references :submenu, null: false, foreign_key: true

      t.timestamps
    end
  end
end
