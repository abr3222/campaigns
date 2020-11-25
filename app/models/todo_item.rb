class TodoItem < ApplicationRecord
  belongs_to :campaign

  def completed?
    !completed_at.blank?
  end
end
