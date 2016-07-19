class AddAuthorsNametoBooks < ActiveRecord::Migration
  def change
    add_column :books, :authors_name, :string
  end
end
