class CreateBooks < ActiveRecord::Migration[8.0]
  def change
    create_table :books do |t|
      t.string :name
      t.date :date
      t.integer :author_id

      t.timestamps
    end
  end
end
