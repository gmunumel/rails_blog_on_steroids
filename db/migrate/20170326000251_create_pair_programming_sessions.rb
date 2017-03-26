class CreatePairProgrammingSessions < ActiveRecord::Migration
  def change
    create_table :pair_programming_sessions do |t|
      t.references :project, index: true, foreign_key: true
      t.references :host_user, index: true, foreign_key: true
      t.references :visitor_user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
