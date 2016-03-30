class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :lawyerid
      t.integer :userid
      t.boolean :request

      t.timestamps null: false
    end
  end
end
