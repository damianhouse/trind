class RemoveSuccessFromEvents < ActiveRecord::Migration
  def change
    remove_column :events, :success, :boolean
  end
end
