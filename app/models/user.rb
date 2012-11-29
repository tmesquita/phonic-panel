class User < ActiveRecord::Base
  attr_accessible :name
  has_many :authorizations

  def self.create_with_omniauth(auth)
    create!(:name => auth['info']['nickname'])
  end
end

