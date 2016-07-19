class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :name
      t.string :authors_name
      t.boolean :read, default: false

      t.timestamps null: false
    end
  end
end
