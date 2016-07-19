class RemoveAuthorsNameFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :authors_name
  end
end
