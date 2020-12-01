class Campaign < ApplicationRecord
  include Filterable

  has_many :todo_items, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_many :taggings
  has_many :tags, through: :taggings

  belongs_to :user

  scope :filter_by_title, -> (title) { where("title like ?", "#{title}%")}
  scope :filter_by_starts_with, -> (text) { where("title like ?", "#{text}%")}
  scope :filter_by_user_id, -> (user_id) { where user_id: user_id }
  scope :filter_by_purpose, -> (purpose) { where purpose: purpose }
  scope :filter_by_estimated_duration, -> (estimated_duration) { where estimated_duration: estimated_duration }

  # enum estimated_duration: ["1_week", "within_1_month", "within_3_months"]
  enum estimated_duration: [ :one_week, :within_1_month, :within_3_months]
  # @campaign = Campaign.filter_by_user_id(2).filter_by_title("SDF")

  def self.tagged_with(name)
    Tag.find_by!(name: name).campaigns
  end

  def self.tag_counts
    Tag.select('tags.*, count(taggings.tag_id) as count').joins(:taggings).group('taggings.tag_id')
  end

  def tag_list
    tags.map(&:name).join(', ')
  end

  def tag_list=(names)
    self.tags = names.split(',').map do |n|
      Tag.where(name: n.strip).first_or_create!
    end
  end

end
