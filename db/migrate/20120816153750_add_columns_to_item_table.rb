class AddColumnsToItemTable < ActiveRecord::Migration
  def change
    change_table :items do |t|
      t.string :description
      t.string :size
    end
  end
end
