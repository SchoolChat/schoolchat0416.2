class Comment < ActiveRecord::Base
  belongs_to :schools

  validates :content, presence: true, length: { in: 3..4000}
end
