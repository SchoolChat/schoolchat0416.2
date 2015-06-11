class User < ActiveRecord::Base
  authenticates_with_sorcery!
  has_many :school_users
  has_many :schools, through: :school_users
  has_many :comments

  validates :name, presence: true, uniqueness: { case_sensitive: false }, length: { in: 2..24 }
  # validates :screen_name, length: { maximum: 140 }
  # validates :bio, length: { maximum: 200  }
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, confirmation: true, length: { in: 6..24 }, if: :password
  validates :password_confirmation, presence: true, if: :password
  validates :schoolname, length: { maximum: 60 }
  validates :schoolinfo, length: { maximum: 200 }
  validates :childage, length: { maximum: 2 }
  validates :region, presence: true, length: { maximum: 2 }
end