class CreateSoundClips < ActiveRecord::Migration
  def change
    create_table :sound_clips do |t|
      t.string :title
      t.string :description
      t.integer :sound_board_id
      t.has_attached_file :sound_file

      t.timestamps
    end
  end
end
