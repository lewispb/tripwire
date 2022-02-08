class AddTitleToListItem < ActiveRecord::Migration[7.0]
  def change
    add_column :list_items, :title, :string
  end
end
