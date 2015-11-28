class AddShortTextToPhoto < ActiveRecord::Migration
  def change
    add_column :photos, :short_text, :string
  end
end
