class Campaign < ApplicationRecord
  include Filterable

  belongs_to :user

  scope :filter_by_title, -> (title) { where("title like ?", "#{title}%")}
  scope :filter_by_starts_with, -> (text) { where("title like ?", "#{text}%")}
  scope :filter_by_user_id, -> (user_id) { where user_id: user_id }
  scope :filter_by_purpose, -> (purpose) { where purpose: purpose }
  scope :filter_by_estimated_duration, -> (estimated_duration) { where estimated_duration: estimated_duration }

  # @campaign = Campaign.filter_by_user_id(2).filter_by_title("SDF")
  #
end
