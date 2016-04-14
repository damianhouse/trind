class AddSearcherInterestedToEvents < ActiveRecord::Migration
  def change
    add_column :events, :searcherinterested, :integer
  end
end
