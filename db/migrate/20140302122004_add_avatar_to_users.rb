class AddAvatarToUsers < ActiveRecord::Migration
  def self.up
    add_attachment :users, :avatar, :force => true
  end

  def self.down
    remove_attachment :users, :avatar
  end
end