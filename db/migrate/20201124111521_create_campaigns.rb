class CreateCampaigns < ActiveRecord::Migration[5.2]
  def change
    create_table :campaigns do |t|
      t.string :title
      t.text :purpose
      t.integer :estimated_duration
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
