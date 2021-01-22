class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :campaign

  acts_as_sequenced scope: :campaign_id #Pick By Default sequential_id
  acts_as_sequenced column: :user_comment_number, scope: :user_id   # Define the Column Name as well

end
