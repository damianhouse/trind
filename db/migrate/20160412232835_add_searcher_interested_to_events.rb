class AddSearcherInterestedToEvents < ActiveRecord::Migration
  def change
    add_column :events, :searcherinterested, :boolean
  end
end
