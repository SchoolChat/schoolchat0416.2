class Comment < ActiveRecord::Base
  belongs_to :schools
  belongs_to :users

  validates :content, presence: true, length: { in: 3..4000}
end
