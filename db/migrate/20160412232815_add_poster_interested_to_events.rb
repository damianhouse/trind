class AddPosterInterestedToEvents < ActiveRecord::Migration
  def change
    add_column :events, :posterinterested, :integer
  end
end
