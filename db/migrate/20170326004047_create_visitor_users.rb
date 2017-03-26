class CreateVisitorUsers < ActiveRecord::Migration
  def change
    create_table :visitor_users do |t|

      t.timestamps null: false
    end
  end
end
