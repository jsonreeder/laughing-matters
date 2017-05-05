class CreateJokes < ActiveRecord::Migration[5.0]
  def change
    create_table :jokes do |t|
      t.text :body, null: false, unique: true

      t.timestamps
    end
  end
end
