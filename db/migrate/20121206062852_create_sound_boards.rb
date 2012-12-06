class CreateSoundBoards < ActiveRecord::Migration
  def change
    create_table :sound_boards do |t|
      t.string :name
      t.string :user_id
      t.string :description

      t.timestamps
    end
  end
end
