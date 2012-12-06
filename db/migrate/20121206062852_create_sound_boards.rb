class CreateSoundBoards < ActiveRecord::Migration
  def change
    create_table :sound_boards do |t|
      t.string :name
      t.string :user_id

      t.timestamps
    end
  end
end
