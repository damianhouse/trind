class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :event_id
      t.integer :author
      t.text :message
      t.boolean :viewed

      t.timestamps null: false
    end
  end
end
