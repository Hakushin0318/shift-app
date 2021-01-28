class CreateDays < ActiveRecord::Migration[6.0]
  def change
    create_table :days do |t|
      t.integer :ok_id,  null: false, default: 1
      t.references :user, foreign_key: true
      t.date :shift_date, null: false, default: "2020-12-12"
      t.timestamps
    end
  end
end
