class CreateAuditLogs < ActiveRecord::Migration
  def change
    create_table :audit_logs do |t|
      t.string :backtrace
      t.string :data
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
