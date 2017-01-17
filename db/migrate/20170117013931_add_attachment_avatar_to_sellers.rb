class AddAttachmentAvatarToSellers < ActiveRecord::Migration
  def self.up
    change_table :sellers do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :sellers, :avatar
  end
end
