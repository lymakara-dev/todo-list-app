class Task < ApplicationRecord
  belongs_to :category

  enum status: { Pending: 0, In_progress: 1, In_review: 2, Completed: 3 }
end
