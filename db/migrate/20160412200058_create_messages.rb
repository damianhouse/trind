class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.integer :conversation_id
      t.integer :author
      t.text :body
      t.boolean :viewed, default: false

      t.timestamps null: false
    end
  end
end
