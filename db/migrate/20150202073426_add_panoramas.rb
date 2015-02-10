class AddPanoramas < ActiveRecord::Migration
  def change
    create_table :panoramas do |t|
      t.string :path, null: false
      t.integer :year
      t.string :img_path, null: false
      t.string :name
    end
  end
end
