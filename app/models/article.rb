class Article < ApplicationRecord
  has_many :comments

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 10 }

  VALID_STATUSES = %w(public private archived)

  validates :stauts, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end
