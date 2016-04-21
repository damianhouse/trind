class AddSuccessToEvents < ActiveRecord::Migration
  def change
    add_column :events, :success, :boolean, default: false
  end
end
