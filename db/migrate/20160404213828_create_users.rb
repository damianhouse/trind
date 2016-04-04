class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.date :born_on
      t.text :summary
      t.text :photo_url
      t.integer :thumbs_up
      t.integer :thumbs_down

      t.timestamps null: false
    end
  end
end
