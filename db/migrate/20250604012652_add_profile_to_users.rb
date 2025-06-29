class AddProfileToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :postal_code, :string, null: false
    add_column :users, :address, :string, null: false
    add_column :users, :bio, :text
  end
end
