class AddSelectedAtToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :selected_at, :datetime, precision: 6
  end
end
