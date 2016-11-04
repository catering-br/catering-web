class AddAttachmentLogoToProfessionals < ActiveRecord::Migration
  def self.up
    change_table :professionals do |t|
      t.attachment :logo
    end
  end

  def self.down
    remove_attachment :professionals, :logo
  end
end
