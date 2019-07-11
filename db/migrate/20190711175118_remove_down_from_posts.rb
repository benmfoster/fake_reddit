class RemoveDownFromPosts < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :down, :integer
  end
end
