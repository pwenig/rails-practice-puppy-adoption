class CreatePlaydates < ActiveRecord::Migration
  def change
    create_table :playdates do |t|
      t.integer :puppy_id
      t.datetime :date
      t.integer :attending
    end
  end
end
