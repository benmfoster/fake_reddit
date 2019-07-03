class AddDownToPosts < ActiveRecord::Migration[5.2]
  
  class Post < ActiveRecord::Base
  end

  def change
    add_column :posts, :down, :integer
    Post.find_each do |post|
      post.down = 0
      post.save!
    end
  end

  def down
    remove_column :posts, :down, :integer
  end

end
