class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.references :user, index: true, foreign_key: true
      t.references :test, index: true, foreign_key: true
      t.integer :r
      t.string :rq

      t.timestamps null: false
    end
  end
end
