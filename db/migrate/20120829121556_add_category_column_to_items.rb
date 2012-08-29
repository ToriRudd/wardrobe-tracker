class AddCategoryColumnToItems < ActiveRecord::Migration
  def change
    add_column :items, :main_category, :string
  end
end
