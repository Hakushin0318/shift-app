class CreateUserShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :user_shifts do |t|
      t.references :shift, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
