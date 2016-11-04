class AddAttachmentAvatarToClients < ActiveRecord::Migration
  def self.up
    change_table :clients do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :clients, :avatar
  end
end
