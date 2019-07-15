class AddTaggedUserIdtoComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :tagged_user_id, :integer
  end
end
