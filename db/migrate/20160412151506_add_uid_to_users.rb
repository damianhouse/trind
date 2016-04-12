class AddUidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :uid, :integer, limit: 10
  end
end
