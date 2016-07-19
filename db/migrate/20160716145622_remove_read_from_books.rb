class RemoveReadFromBooks < ActiveRecord::Migration
  def change
    remove_column :books, :read
  end
end
