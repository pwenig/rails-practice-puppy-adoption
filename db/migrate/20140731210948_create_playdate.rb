class CreatePlaydate < ActiveRecord::Migration
  def change
    create_table :playdates do |t|
      t.integer :user_id
      t.integer :puppy_id
      t.datetime :date
      t.integer :number_of_attending
    end
  end
end
