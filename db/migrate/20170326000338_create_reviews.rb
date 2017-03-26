class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :pair_programming_session, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :comment

      t.timestamps null: false
    end
  end
end