class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :user_id
      t.boolean :is_private
      t.string :file

      t.timestamps null: false
    end
  end
end
