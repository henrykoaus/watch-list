class AddCategoryToLists < ActiveRecord::Migration[7.1]
  def change
    add_column :lists, :category, :string
  end
end
