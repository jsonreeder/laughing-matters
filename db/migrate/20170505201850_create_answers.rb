class CreateAnswers < ActiveRecord::Migration[5.0]
  def change
    create_table :answers do |t|
      t.text :body, null: false
      t.integer :riddle_id, null: false

      t.timestamps
    end
    add_index :answers, [:body, :riddle_id], unique: true
    add_foreign_key :answers, :riddles
  end
end
