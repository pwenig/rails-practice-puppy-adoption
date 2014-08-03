class CreateAdopted < ActiveRecord::Migration
  def change
    create_table :adopteds do |t|
      t.integer :puppy_id
    end
  end
end
