class AddDangerToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :danger, :integer, :null => false, :default => 1000
  end
end
