class AddTagtoNotifications < ActiveRecord::Migration[5.2]
  def change
    add_column :notifications, :tag, :boolean
  end
end
