class AddElementsToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :is_owner, :boolean
    add_column :users, :name, :string
    add_column :users, :last_name, :string
    add_column :users, :preferences, :string
    add_column :users, :address, :string
    add_column :users, :age, :integer
  end
end
