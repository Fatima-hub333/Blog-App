class AddUserRefToLike < ActiveRecord::Migration[7.0]
  def change
    add_reference :likes, :author, null: false, foreign_key: { to_table: :users }, on_delete: :cascade
  end
end
