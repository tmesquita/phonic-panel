class User < ActiveRecord::Base
  attr_accessible :name
  has_many :authorizations
  has_many :sound_boards

  def self.create_with_omniauth(auth)
    create!(:name => auth['info']['nickname'])
  end
end

