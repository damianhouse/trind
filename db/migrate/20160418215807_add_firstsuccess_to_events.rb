class AddFirstsuccessToEvents < ActiveRecord::Migration
  def change
    add_column :events, :first_success, :boolean
  end
end
