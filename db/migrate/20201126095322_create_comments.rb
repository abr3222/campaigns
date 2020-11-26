class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :comment
      t.references :campaign, foreign_key: true
      t.timestamps
    end
  end
end
