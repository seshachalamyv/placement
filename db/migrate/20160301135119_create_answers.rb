class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :question, index: true, foreign_key: true
      t.string :choice
      t.boolean :c

      t.timestamps null: false
    end
  end
end
