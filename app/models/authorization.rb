class Authorization < ActiveRecord::Base
  attr_accessible :provider, :uid, :user_id, :user

  belongs_to :user
  validates_presence_of :user_id, :uid, :provider
  validates_uniqueness_of :uid, :scope => :provider

  def self.find_with_omniauth(auth)
    find_by_provider_and_uid(auth['provider'], auth['uid'])
  end

  def self.create_with_omniauth(authorization_hash, user = nil)
    user ||= User.create_with_omniauth(authorization_hash)
    Authorization.create(:user => user, :uid => authorization_hash['uid'], :provider => authorization_hash['provider'])
  end
end
