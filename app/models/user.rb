class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true

  has_many :team_members, dependent: :destroy
  has_many :teams, through: :team_members
  has_many :team_channel_members, dependent: :destroy
  has_many :channels, through: :team_channel_members
  has_many :owned_teams,
           foreign_key: :owner_id,
           class_name: "Team",
           dependent: :destroy,
           inverse_of: :owner
  has_many :messages, dependent: :destroy, class_name: 'Team::Channel::Message'

  def guest?
    false
  end
end