class CreatePlaydates < ActiveRecord::Migration
  def change
    create_table :playdates do |t|
      t.datetime :date
      t.belongs_to :puppy
      t.integer :attending
    end
  end
end
