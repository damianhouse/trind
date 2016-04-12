class AddUidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :uid, :integer, limit: 8
  end
end
