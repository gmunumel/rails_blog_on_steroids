class CreateCodeSamples < ActiveRecord::Migration
  def change
    create_table :code_samples do |t|
      t.references :review, index: true, foreign_key: true
      t.text :code

      t.timestamps null: false
    end
  end
end
