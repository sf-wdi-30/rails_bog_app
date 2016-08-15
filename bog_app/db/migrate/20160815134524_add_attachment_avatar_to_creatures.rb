class AddAttachmentAvatarToCreatures < ActiveRecord::Migration
  def self.up
    change_table :creatures do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :creatures, :avatar
  end
end
