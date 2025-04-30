class AddDeletedToPosts < ActiveRecord::Migration[8.0]
  def change
    add_column :posts, :deleted, :boolean
  end
end
