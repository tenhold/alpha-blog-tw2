class Comment < ApplicationRecord
  belongs_to :article

  VALID_STATUSES = %w(public private archived)

  validates :stauts, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end
