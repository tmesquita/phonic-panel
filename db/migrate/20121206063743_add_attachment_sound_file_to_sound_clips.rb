class AddAttachmentSoundFileToSoundClips < ActiveRecord::Migration
  def self.up
    change_table :sound_clips do |t|
      t.has_attached_file :sound_file
    end
  end

  def self.down
    drop_attached_file :sound_clips, :sound_file
  end
end
