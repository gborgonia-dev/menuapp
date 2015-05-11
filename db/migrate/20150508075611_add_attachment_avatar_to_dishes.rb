class AddAttachmentAvatarToDishes < ActiveRecord::Migration
  def self.up
    add_attachment :dishes, :avatar
  end

  def self.down
    remove_attachment :dishes, :avatar
  end
end
