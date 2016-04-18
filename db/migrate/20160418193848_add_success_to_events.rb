class AddSuccessToEvents < ActiveRecord::Migration
  def change
    add_column :events, :success, :boolean
  end
end
