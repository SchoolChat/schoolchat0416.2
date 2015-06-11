class School < ActiveRecord::Base
  has_many :school_users
  has_many :users, through: :school_users
  has_many :comments

  validates :name, presence: true, uniqueness: true
  validates :location, presence: true, length: { maximum: 20 }
  validates :program, length: { maximum: 50 }
  validates :hp, length: { maximum: 100 }
end