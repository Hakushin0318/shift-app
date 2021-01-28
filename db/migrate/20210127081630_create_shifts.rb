class CreateShifts < ActiveRecord::Migration[6.0]
  def change
    create_table :shifts do |t|
      t.references :user
      t.references :shift_date
      t.references :ok_id
      t.timestamps
    end
  end
end
