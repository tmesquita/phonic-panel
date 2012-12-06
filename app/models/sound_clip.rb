class SoundClip < ActiveRecord::Base
  attr_accessible :descriptions, :sound_board_id, :title

  belongs_to :sound_board
end
