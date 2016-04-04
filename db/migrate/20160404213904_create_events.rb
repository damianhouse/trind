class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :user_id
      t.integer :searcher_id
      t.text :interests
      t.text :description
      t.text :location
      t.boolean :success

      t.timestamps null: false
    end
  end
end
