class CreateBoardPosts < ActiveRecord::Migration[5.2]
  def change
    create_table :board_posts do |t|
      t.text :text
      t.integer :user_id

      t.timestamps
    end
  end
end