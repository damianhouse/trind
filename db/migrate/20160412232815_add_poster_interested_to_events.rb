class AddPosterInterestedToEvents < ActiveRecord::Migration
  def change
    add_column :events, :posterinterested, :boolean
  end
end
